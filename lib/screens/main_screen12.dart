import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_person5/screens/chatbot_Screen13.dart';
import 'package:internship_task_person5/screens/doctr_Scrre.dart';
import 'package:internship_task_person5/widgets/button_container.dart';
import 'package:internship_task_person5/widgets/dot_row.dart';
import 'package:internship_task_person5/widgets/pic_row.dart';
import 'package:internship_task_person5/widgets/rcontainer.dart';
import 'package:internship_task_person5/widgets/reusable_row.dart';

class MainScreen12 extends StatefulWidget {
  const MainScreen12({super.key});

  @override
  State<MainScreen12> createState() => _MainScreen12State();
}

class _MainScreen12State extends State<MainScreen12> {
  bool isSelectd = false;
  bool isSelectd1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height / 3,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 94, 92, 92),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(image: AssetImage('assets/back.png')),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 94, 92, 92),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(image: AssetImage('assets/share.png')),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 100,
                    left: 100,
                    child: Text(
                      'Ulcerative Colitis',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Positioned(
                  top: 160,
                  left: 110,
                  child: Text(
                    'Inflamatory bowel disease',
                    style: TextStyle(
                        // fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 200,
                    left: 70,
                    child: Row(
                      children: [
                        RContainer(image: 'assets/c1.png', text1: 'UC'),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        RContainer(image: 'assets/c2.png', text1: 'Low Risk'),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        RContainer(image: 'assets/c3.png', text1: '48LCs'),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: Get.height / 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: Get.width,
                height: Get.height / 18,
                //color: Colors.black,
                color: Color(0xffE3E4E3),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectd = !isSelectd;
                        });
                      },
                      child: Container(
                        width: Get.width / 2.5,
                        height: Get.height / 18,
                        decoration: BoxDecoration(
                            color:
                                //isSelectd == true
                                // ? Color(0xff84CC16)
                                // :
                                Color(0xffE3E4E3)),
                        child: Center(
                            child: Text(
                          'Details',
                          style: TextStyle(
                              color: isSelectd == true
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectd1 = !isSelectd1;
                        });
                      },
                      child: Container(
                        width: Get.width / 2.5,
                        height: Get.height / 18,
                        decoration: BoxDecoration(
                            color:
                                //  isSelectd1 == true
                                //     ?
                                Color(0xff84CC16)
                            //     :
                            // Color(0xffE3E4E3)
                            ),
                        child: Center(
                            child: Text(
                          'Treatment',
                          style: TextStyle(
                              color: isSelectd1 == true
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Treatment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                      'If you have tried self-care for a few weeks and still\n have carpal tunnel syndrome symptoms such as\n burning or tingling in the hand and fingers, numbness,\n wrist or hand pain, wrist joint stiffness, wrist weakness,\n weak grip, and trouble making small finger\n movements, see your doctor.'),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  ReusableRow(text: 'Anti-inflammatory medication'),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  ReusableRow(text: 'Cortisone injections'),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  ReusableRow(text: 'Hand and wrist exercises'),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  ReusableRow(
                      text: 'Surgery to relieve the pressure on the nerves'),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Get.height / 10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffF43F5E),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: Get.height / 60,
                            ),
                            Image(image: AssetImage('assets/c2.png')),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'See a Doctor within 48h',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: Get.height / 60,
                        // ),
                        Text(
                          'You should see a doctor within the next 24 hours.\nThe condition are very serious ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  Text(
                    'Avaliable Doctors',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  PicRow(
                    image: 'assets/pic1.png',
                    nametext: 'Dr. Akari Mizunashi',
                    image2: 'assets/ortho.png',
                    stext: 'Orthopedic',
                    dtext: '8km',
                    width1: Get.width / 4,
                    srate: '2.1',
                  ),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  PicRow(
                    image: 'assets/pic2.png',
                    nametext: 'Dr. Billy Joel',
                    image2: 'assets/surgen.png',
                    stext: 'Surgeon',
                    dtext: '780m',
                    width1: Get.width / 4,
                    srate: '3.1',
                  ),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  PicRow(
                    image: 'assets/pic3.png',
                    nametext: 'Dr. Azunyan U. Wu',
                    image2: 'assets/card.png',
                    stext: 'Cardiologist',
                    dtext: '8km',
                    width1: Get.width / 4,
                    srate: '4.1',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => DoctorsScreen());
              },
              child: Container(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'Browse all 84 Doctors',
                      style: TextStyle(
                          color: Color(0xff84CC16),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key Highlights',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: Get.height / 40,
                  ),
                  Text(
                      'Carpal tunnel syndrome usually starts slowly with \ntingling and numbness in the hand and fingers. Often,\n symptoms start at nigh'),
                  SizedBox(
                    height: Get.height / 60,
                  ),
                  Text(
                      'Eventually, tingling and numbness occurs during the\n day. These sensations may move up to the elbow.\n Hand weakness develops, making it hard to make a fist\n or grasp objects. In severe cases, the muscle behind the\n thumb wastes away. Changing your workspace, taking\n medication, using wrist braces, and even surgery can\n relieve symptoms.'),
                  SizedBox(
                    height: Get.height / 40,
                  ),
                  DotRow(text: 'How long should I rest my wrist and hand?'),
                  // SizedBox(
                  //   height: Get.height / 90,
                  // ),
                  DotRow(
                      text:
                          'Should I cut back on any recreation or work activities?'),
                  DotRow(text: 'How long will the soreness last?'),
                  DotRow(text: 'Are there any exercises I should be doing?'),
                  DotRow(
                      text:
                          'Could this be something other than carpal tunnel?'),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Learn more about Ulcerative Colitis',
                        style: TextStyle(
                            color: Color(0xff84CC16),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff84CC16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  ButtonConatiner(
                      color: Color(0xff313A34),
                      image: 'assets/retake.png',
                      text: 'Re-take test'),
                  SizedBox(
                    height: Get.height / 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ChatBot());
                    },
                    child: ButtonConatiner(
                        color: Color(0xff84CC16),
                        image: 'assets/chat.png',
                        text: 'Use AI Chatbot'),
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
