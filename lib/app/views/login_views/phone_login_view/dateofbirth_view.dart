import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/views/mainpage_views/mainpage_view.dart';
import 'package:get/get.dart';

class DOBView extends StatefulWidget {
  const DOBView({super.key});

  @override
  State<DOBView> createState() => _DOBViewState();
}

class _DOBViewState extends State<DOBView> {
  String dateOfBirth = "";
  saveDate() async {
    await FirebaseFirestore.instance
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({
      "dateOfBirth": dateOfBirth,
    });

    Get.offAll(() => MainView());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ppurple1,
            ppurple2,
            ppurple3,
            ppurple4,
            ppurple5,
            ppurple6,
            ppurple7,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: trans,
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "My Birthday",
                style: TextStyle(
                  color: white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newtime) {
                    setState(() {
                      dateOfBirth = newtime.toString();
                    });
                  },
                  mode: CupertinoDatePickerMode.date,
                  // initialDateTime: dateTime,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  saveDate();
                },
                child: Container(
                  height: 45,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 67, 5, 78),
                  ),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Can't be changed after confirmation",
                style: TextStyle(
                  color: white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
