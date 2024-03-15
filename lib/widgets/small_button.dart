import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmallButton extends StatelessWidget {
  Color color;
  double width;
  String text, image;
  SmallButton(
      {required this.color,
      required this.image,
      required this.text,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: Get.height / 18,
        width: width,
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
