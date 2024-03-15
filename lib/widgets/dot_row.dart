import 'package:flutter/material.dart';

class DotRow extends StatelessWidget {
  String text;
  DotRow({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(3)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(),
        ),
      ],
    );
  }
}
