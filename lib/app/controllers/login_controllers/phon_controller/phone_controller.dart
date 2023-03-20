import 'dart:convert';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/views/login_views/phone_login_view/otp_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class PhoneController extends GetxController {
  GlobalKey<FormState> globlekey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();

  final Future<SharedPreferences> pref = SharedPreferences.getInstance();

  String verification = "";

  Future<void> register() async {
    try {
      const url = "http://lafa.dousoftit.com/api/register1";
      final response = await http.post(Uri.parse(url), body: {
        "phone": phonecontroller,
      });
      log(response.statusCode.toString());
      if (response.statusCode == 200 || response.statusCode == 401) {
        final data = jsonDecode(response.body);

        if (data["statusCode"] == 200) {
          var token = data["data"]["token"];
          log(token);

          final SharedPreferences prefs = await pref;
          await prefs.setString("token", token);
          phonecontroller.clear();
          Get.to(() => OTPView());
        } else {
          throw data['message'] ?? "Unknown Error Occured";
        }
      } else {
        throw jsonDecode(response.body)['message'] ?? "Unknown Error Occured";
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text("Error"),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }

  // Future<bool> register(String phone) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final userId = prefs.getInt('userId');
  //   const url = "http://lafa.dousoftit.com/api/register1";
  //   final response = await http.post(Uri.parse(url), body: {
  //     "user_id": userId,
  //     "phone": phone,
  //   });
  //   log(response.statusCode.toString());
  //   if (response.statusCode == 200 || response.statusCode == 401) {
  //     final data = jsonDecode(response.body);

  //     if (data["status"] == false) {
  //       Get.snackbar(
  //         "Error",
  //         data["message"]["phone"][0],
  //         backgroundColor: white,
  //       );
  //       userID.value = data["data"]["user"]["id"];

  //       SharedPreferences pref = await SharedPreferences.getInstance();
  //       pref.setInt("userID", userID.value);
  //       log(userID.toString());

  //       Get.to(() => OTPView());
  //       return true; // false;
  //     }
  //     return true;
  //   }
  //   return false;
  // }

  void login() async {
    await register();

    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${phonecontroller.text}',
        verificationCompleted: (phoneAuthCredential) {},
        verificationFailed: (firebaseAuthException) {},
        codeSent: (verificationId, int? resendingToken) {
          verification = verificationId;
          Get.to(() => OTPView());
        },
        codeAutoRetrievalTimeout: ((verificationId) {}),
      );
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
    }
  }
}










// class PhoneController extends GetxController {
//   GlobalKey<FormState> globlekey = GlobalKey<FormState>();
//   TextEditingController phonecontroller = TextEditingController();
//   var userID = "".obs;
//   String verification = "";

//   Future<bool> register(String phone) async {
//     final prefs = await SharedPreferences.getInstance();
//     final userId = prefs.getInt('userId');
//     const url = "http://lafa.dousoftit.com/api/register1";
//     final response = await http.post(Uri.parse(url), body: {
//       // "user_id": userId,
//       "phone": phone,
//     });
//     log(phone);
//     log(response.statusCode.toString());
//     final data = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       var res = Register.fromJson(data);
//       log(res.message);

//       if (res.statusCode == true) {
//         // Get.snackbar(
//         //   "Error",
//         //   data["message"]["phone"][0],
//         //   backgroundColor: white,
//         // );
//         userID.value = res.data.token;

//         SharedPreferences pref = await SharedPreferences.getInstance();
//         pref.setString("userID", userID.value);
//         log(userID.toString());

//         return false;
//       }
//       return true;
//     }
//     if (response.statusCode == 401) {
//       var res2 = AlreadyRegister.fromJson(data);
//       if (res2.message.phone[0] == "The phone has already been taken.") {
//         Get.to(() => OTPView());
//       }
//     }
//     return false;
//   }

//   void login() async {
//     final response = await register(phonecontroller.text);

//     if (response == false) {
//       return;
//     }
//     try {
//       await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: '+91${phonecontroller.text}',
//         verificationCompleted: (phoneAuthCredential) {},
//         verificationFailed: (firebaseAuthException) {},
//         codeSent: (verificationId, int? resendingToken) {
//           verification = verificationId;
//           Get.to(() => OTPView());
//         },
//         codeAutoRetrievalTimeout: ((verificationId) {}),
//       );
//     } on FirebaseAuthException catch (e) {
//       log(e.message.toString());
//     }
//   }
// }
