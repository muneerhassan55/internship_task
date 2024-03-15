import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PicRow extends StatelessWidget {
  String image, nametext;
  String image2, stext, dtext, srate;
  double width1;
  PicRow(
      {required this.image,
      required this.nametext,
      required this.image2,
      required this.stext,
      required this.dtext,
      required this.srate,
      required this.width1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(image: AssetImage(image)),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    nametext,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(image: AssetImage('assets/verify.png')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage(image2)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(stext),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/location.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(dtext)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/star.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('assets/star.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('assets/star.png'),
                  ),
                  SizedBox(
                    width: width1,
                  ),
                  Text(srate)
                ],
              ),
            ],
          ),
          SizedBox(
            width: Get.width / 10,
          ),
          Image(
            image: AssetImage(
              'assets/forward.png',
            ),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
