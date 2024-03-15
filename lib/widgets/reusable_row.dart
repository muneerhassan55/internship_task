import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  String text;
  ReusableRow({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            'assets/check.png',
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
