import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fun_unlimited/app/views/about_view/messagepage_view.dart';
import 'package:fun_unlimited/app/views/about_view/mybalance_view.dart';
import 'package:fun_unlimited/app/views/about_view/mychatprice_view.dart';
import 'package:fun_unlimited/app/views/about_view/myearning_view.dart';
import 'package:fun_unlimited/app/views/about_view/mylavel_view.dart';
import 'package:fun_unlimited/app/views/about_view/myprofile_view.dart';
import 'package:fun_unlimited/app/views/about_view/mytask_view.dart';
import 'package:fun_unlimited/app/views/about_view/setting_view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/profile_image_view/profile_image_view.dart';

import 'package:get/get.dart';

import '../../common_widgets/common_colors.dart';

class AboutView extends GetView {
  @override
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        backgroundColor: appbarcolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(
              160,
              32,
            ),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance
                  .collection("User")
                  .doc(FirebaseAuth.instance.currentUser!.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData == false) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final user = snapshot.data!;
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const ProfileImageView());
                      },
                      child: CircleAvatar(
                          backgroundColor: white,
                          radius: 25,
                          backgroundImage:
                              NetworkImage(user.get('photo') ?? "")),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      user.get('name') ?? "",
                      style: const TextStyle(
                          color: purple, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "0\nFriends",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: black,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "0\nFollowing",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: black,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(trans),
                  ),
                  child: const Text(
                    "0\nFollowers",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Get.to(() => const MessagePageView());
              },
              leading: const Icon(
                Icons.message,
                color: pink,
              ),
              title: const Text(
                "Messages",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const MylevelView());
              },
              leading: const Icon(
                FontAwesome.vcard,
                color: yellow,
              ),
              title: const Text(
                "My Level",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => MyBalanceView());
              },
              leading: const Icon(
                Icons.diamond,
                color: yellow,
              ),
              title: const Text(
                "My Balance",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const MyTaskView());
              },
              leading: const Icon(
                Icons.note,
                color: yellow,
              ),
              title: const Text(
                "My Tasks",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.credit_card,
                color: yellow,
              ),
              title: const Text(
                "My Invitation",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const MyProfileView());
              },
              leading: const Icon(
                Icons.face,
                color: purple,
              ),
              title: const Text(
                "My Profile",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const MyEarningView());
              },
              leading: const Icon(
                Icons.currency_rupee,
                color: purple,
              ),
              title: const Text(
                "My Earning",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const MyChatPriceView());
              },
              leading: const Icon(
                Icons.currency_bitcoin,
                color: purple,
              ),
              title: const Text(
                "My Chat Price",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => SettingView());
              },
              leading: const Icon(
                Icons.settings,
                color: purple,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: grey,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
