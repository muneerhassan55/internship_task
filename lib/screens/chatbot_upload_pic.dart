import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internship_task_person5/screens/chatbotresult.dart';

class ChatBotUpload extends StatefulWidget {
  ChatBotUpload({super.key});

  @override
  State<ChatBotUpload> createState() => _ChatBotUploadState();
}

class _ChatBotUploadState extends State<ChatBotUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: Get.height / 25),
            Text(
              'Please capture photo of your\n symptom so we can analyze\n with our AIML tech.',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: Get.height / 8.2,
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: _image != null
                          ? Container(
                              height: 200,
                              width: 300,
                              color: Color(0xff84CC16),
                              child: Image(
                                image: MemoryImage(_image!),
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(
                              height: 200,
                              width: 300,
                              child: Image(image: AssetImage('assets/arm.png')),
                            ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          showImagePickerOption(context);
                        },
                        child: Container(
                          height: Get.height / 15,
                          width: Get.width / 2,
                          decoration: BoxDecoration(
                              color: Color(0xff84CC16),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Upload Picture",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => ResultChatBot());
                        },
                        child: Text('Result'))
                  ]),
            )
          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Uint8List? _image;
  File? selectedIMage;
//Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  String selectedImagePath = '';
}
