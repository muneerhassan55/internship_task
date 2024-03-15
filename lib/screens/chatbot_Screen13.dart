import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/chatbot_screen14.dart';
import 'package:internship_task_person5/screens/main_screen12.dart';
import 'package:internship_task_person5/widgets/small_button.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

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
              'Hey, Bocchi! I’m Dr. Osler AI,\n and I will guide you analyze \npossible symptom conditions.\n Are you ready?',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: Get.height / 2.5,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ChatBotScreen14());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xff84CC16),
                    image: 'assets/aforward.png',
                    text: 'Yes, Start',
                    width: Get.width / 2.8,
                  )),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MainScreen12());
              },
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: SmallButton(
                    color: Color(0xffF43F5E),
                    image: 'assets/close.png',
                    text: 'No, Go Back',
                    width: Get.width / 2.5,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
