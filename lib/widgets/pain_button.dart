import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PainButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function() onPressed;

  PainButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  _PainButtonState createState() => _PainButtonState();
}

class _PainButtonState extends State<PainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed(); // Notify the parent when this button is tapped
      },
      child: Container(
        height: Get.height / 18,
        width: Get.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.isSelected ? Color(0xff84CC16) : Colors.white,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
