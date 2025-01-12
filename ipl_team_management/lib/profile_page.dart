import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ipl_team_management/firebase_services.dart';
import 'package:ipl_team_management/ipl_team.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jersyNoController = TextEditingController();
  TextEditingController iplTeamController = TextEditingController();

  bool addOnPress = false;
  bool getOnPress = false;

  void clearContoller() {
    nameController.clear();
    jersyNoController.clear();
    iplTeamController.clear();
  }

  String? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  ImagePicker imagePicker = ImagePicker();
                  XFile? images =
                      await imagePicker.pickImage(source: ImageSource.gallery);

                  if (images != null) {
                    log("File Path : ${images.path}");
                    log("File Path : ${images.name}");
                    setState(() {
                      selectedImage = images.path;
                    });
                  } else {
                    log("image not selsected ");
                  }
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  clipBehavior: Clip.antiAlias,
                  child: selectedImage != null
                      ? Image.file(File(selectedImage!))
                      : Image.network(
                          "https://tse1.mm.bing.net/th?id=OIP.OKHQA3-ANqvg09xUAWwkPAHaHa&pid=Api&P=0&h=220",
                          fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 69, 69, 69),
                          offset: Offset(2, 0),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter player name",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 187, 187, 186),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 69, 69, 69),
                          offset: Offset(2, 0),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: TextField(
                    controller: jersyNoController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter jersy no ",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 187, 187, 186),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 69, 69, 69),
                          offset: Offset(2, 0),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: TextField(
                    controller: iplTeamController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter IPL team name",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 187, 187, 186),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      addOnPress = !addOnPress;
                      FirebaseServices.putFirebaseStorageData(
                          nameController.text, File(selectedImage!));
                      FirebaseServices.firebaseAddData(nameController.text,
                          jersyNoController.text, iplTeamController.text);

                      setState(() {
                        // clearContoller();
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(addOnPress
                            ? const Color.fromARGB(255, 39, 28, 234)
                            : Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Add Data",
                        style: TextStyle(
                            color: addOnPress
                                ? Colors.white
                                : const Color.fromARGB(255, 8, 33, 176)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        getOnPress = !getOnPress;
                        FirebaseServices.getFirebaseData(
                            iplTeamController.text, context);
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return const IplTeam();
                        // }));
                        setState(() {});
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                        getOnPress
                            ? const Color.fromARGB(255, 39, 28, 234)
                            : Colors.white,
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Get Data",
                          style: TextStyle(
                              color: getOnPress
                                  ? const Color.fromARGB(255, 235, 230, 230)
                                  : const Color.fromARGB(255, 8, 33, 176)),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
