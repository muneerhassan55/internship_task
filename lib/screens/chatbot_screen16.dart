import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/chatbot_upload_pic.dart';
import 'package:internship_task_person5/widgets/pain_button.dart';

class ChatBotScreen16 extends StatefulWidget {
  ChatBotScreen16({Key? key}) : super(key: key);

  @override
  _ChatBotScreen16State createState() => _ChatBotScreen16State();
}

class _ChatBotScreen16State extends State<ChatBotScreen16> {
  int selectedIndex = -1;

  void selectPain(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              'On the scale of 1-5, how \npainful is your leg pain?',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: Get.height / 4.2,
            ),
            // Your existing UI code here...
            Container(
              alignment: Alignment.bottomRight,
              child: Column(
                children: [
                  Text(
                    'Select your pain level.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: Get.height / 80),
                  for (int i = 1; i <= 5; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: PainButton(
                        text: i.toString(),
                        isSelected: selectedIndex == i,
                        onPressed: () {
                          selectPain(i);
                          Get.to(() => ChatBotUpload());
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
