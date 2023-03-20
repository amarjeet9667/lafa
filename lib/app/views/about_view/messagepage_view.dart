import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';

import 'package:get/get.dart';

class MessagePageView extends GetView {
  const MessagePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: const IconThemeData(color: black),
        title: const Center(
          child: Text(
            "Messages",
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.bold,
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
                  SizedBox(
                    height: 70,
                    child: ListTile(
                      onTap: () {},
                      title: const Text(
                        "Lafa Team",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: grey,
                        radius: 30,
                        child: Icon(
                          FontAwesome.fire,
                          color: purple,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: ListTile(
                      onTap: () {},
                      title: const Text(
                        "Lafa Service",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: grey,
                        radius: 30,
                        child: Icon(
                          FontAwesome.fire,
                          color: purple,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: ListTile(
                      onTap: () {},
                      title: const Text(
                        "Strenger's Messages",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: grey,
                        radius: 30,
                        child: Icon(
                          FontAwesome.fire,
                          color: purple,
                        ),
                      ),
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
