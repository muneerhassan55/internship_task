import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/pic_row.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SizedBox(
                height: Get.height / 20,
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
              SizedBox(
                height: Get.height / 20,
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
              SizedBox(
                height: Get.height / 20,
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
      ),
    );
  }
}
