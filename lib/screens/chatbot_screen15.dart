import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/main_screen12.dart';
import 'package:internship_task_person5/widgets/reusable_button.dart';
import 'package:internship_task_person5/widgets/small_button.dart';

import 'chatbot_screen14.dart';
import 'chatbot_screen16.dart';

class ChatBotScreen15 extends StatelessWidget {
  ChatBotScreen15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: Get.height / 25),
            Text(
              'Are you experiencing any\n itching or pain on your leg?',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: Get.height / 2.2,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ChatBotScreen16());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xff84CC16),
                    image: 'assets/aforward.png',
                    text: 'Yes',
                    width: Get.width / 3.5,
                  )),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ChatBotScreen14());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xffF43F5E),
                    image: 'assets/close.png',
                    text: 'No',
                    width: Get.width / 3.2,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
