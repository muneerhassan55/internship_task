import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/main_screen12.dart';
import 'package:internship_task_person5/widgets/reusable_button.dart';
import 'package:internship_task_person5/widgets/small_button.dart';

import 'chatbot_screen14.dart';
import 'chatbot_screen16.dart';

class ShowSymptomChatBot extends StatelessWidget {
  ShowSymptomChatBot({super.key});

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
                'OK, bocchi, here are the\n possible conditions that you\n might experience based  on\n your symptoms',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ulcerative Colitis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(
                        width: Get.width / 1.5,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff84CC16)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage('assets/hmatch.png')),
                          SizedBox(
                            width: 10,
                          ),
                          Text('High Match'),
                          SizedBox(
                            width: 20,
                          ),
                          Image(image: AssetImage('assets/hrisk.png')),
                          SizedBox(
                            width: 10,
                          ),
                          Text('High Risk'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: Get.width / 9,
                  ),
                  Image(
                    image: AssetImage('assets/forward.png'),
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Colon Cancer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(
                        width: Get.width / 2.5,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFACC15)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/hmatch.png'),
                            color: Color(0xffFACC15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Medium Match'),
                          SizedBox(
                            width: 20,
                          ),
                          Image(image: AssetImage('assets/hrisk.png')),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Low Risk'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: Get.width / 4.5,
                  ),
                  Image(
                    image: AssetImage('assets/forward.png'),
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: Get.height / 10,
              ),
              Container(
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
                      SizedBox(
                        width: 5,
                      ),
                      Image(image: AssetImage('assets/aforward.png'))
                    ],
                  ),
                ),
              ),
            ])));
  }
}
