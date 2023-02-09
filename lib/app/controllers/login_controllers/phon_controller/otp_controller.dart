import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/controllers/login_controllers/phon_controller/phone_controller.dart';
import 'package:fun_unlimited/app/views/login_views/phone_login_view/select_gender_view.dart';
import 'package:get/get.dart';

class OTPControllr extends GetxController {
  RxBool isLoading = false.obs;

  TextEditingController otpcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void next() async {
    final phoncontroller = Get.find<PhoneController>();

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: phoncontroller.verification,
        smsCode: otpcontroller.text);
    final data = await auth.signInWithCredential(credential);
    await saveUser(
      email: data.user!.phoneNumber!,
      name: "User3435",
      photo: null,
    );
    Get.to(() => const SelectGenderView());
  }

  Future<void> saveUser({
    required String email,
    required String name,
    required String? photo,
  }) async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final firestore = await FirebaseFirestore.instance
        .collection("User")
        .where('uid', isEqualTo: uid)
        .get();
    if (firestore.docs.isEmpty) {
      await FirebaseFirestore.instance.collection("User").doc(uid).set({
        "name": name,
        "email": email,
        "photo": photo,
      }).then((value) {
        Get.to(() => const SelectGenderView());
      });
    }
  }
}
