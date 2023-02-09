import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:get/get.dart';

class MyProfileView extends GetView {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: const IconThemeData(color: black),
        title: const Center(
          child: Text(
            'My Profile',
            style: TextStyle(
              color: black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'My Avata',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'ID',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Nickname',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Gender',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Age',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Region',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Location',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Language',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Secon Language',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Self-Introduction',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Google',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Text(
                      'Phone',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
