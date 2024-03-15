import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/chatbot_screen15.dart';
import 'package:internship_task_person5/screens/main_screen12.dart';
import 'package:internship_task_person5/widgets/reusable_button.dart';
import 'package:internship_task_person5/widgets/small_button.dart';

class ChatBotScreen14 extends StatelessWidget {
  ChatBotScreen14({super.key});

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
              'Which symptom in body area\n is troubling you most?',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: Get.height / 2.2,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ChatBotScreen15());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xff84CC16),
                    image: 'assets/aforward.png',
                    text: 'Head',
                    width: Get.width / 2.8,
                  )),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ChatBotScreen15());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xffF43F5E),
                    image: 'assets/aforward.png',
                    text: 'Shoulder',
                    width: Get.width / 2.5,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
