import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  String image, text1;
  RContainer({required this.image, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.white)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Image(image: AssetImage(image)),
          SizedBox(
            width: 10,
          ),
          Text(
            text1,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
