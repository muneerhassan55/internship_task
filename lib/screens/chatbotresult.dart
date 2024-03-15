import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/chatbot_symptooms_screen.dart';
import 'package:internship_task_person5/screens/main_screen12.dart';
import 'package:internship_task_person5/widgets/reusable_button.dart';
import 'package:internship_task_person5/widgets/small_button.dart';

import 'chatbot_screen14.dart';
import 'chatbot_screen16.dart';

class ResultChatBot extends StatelessWidget {
  ResultChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(height: Get.height / 25),
              Text(
                'Please wait while we’re\n analyzing it with our custom AI\n LLM data...',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: Get.height / 2.2,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => ShowSymptomChatBot());
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: Get.height / 18,
                    width: Get.width / 2,
                    decoration: BoxDecoration(
                        color: Color(0xff84CC16),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Show Details',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])));
  }
}
