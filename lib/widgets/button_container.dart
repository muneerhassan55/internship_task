import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonConatiner extends StatelessWidget {
  Color color;
  String text, image;
  ButtonConatiner(
      {required this.color, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: Get.height / 18,
        width: Get.width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Image(image: AssetImage(image))
          ],
        ),
      ),
    );
  }
}
