import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableButton extends StatefulWidget {
  Color color;
  double width;
  String text, image;
  ReusableButton(
      {required this.color,
      required this.image,
      required this.text,
      required this.width});

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          isSelected = !isSelected;
        },
        child: Container(
          height: Get.height / 18,
          width: widget.width,
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    fontSize: 18,
                    color: isSelected == true ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage(
                  widget.image,
                ),
                color: isSelected == true ? Colors.white : Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
