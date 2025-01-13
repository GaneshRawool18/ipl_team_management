import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:ipl_team_management/ipl_team.dart';

String? downLoadUrl;

class FirebaseServices {
  static void firebaseAddData(
      String name, String jersyNo, String teamName) async {
    Map<String, dynamic> data = {
      "playerName": name,
      "jersyNo": jersyNo,
      "teamName": teamName,
      "imageUrl": downLoadUrl!,
    };
    log("Team name $teamName");
    DocumentReference refData =
        FirebaseFirestore.instance.collection("franchises").doc(teamName);
    await refData.set(data);
  }

  static void getFirebaseData(String teamName, context) async {
    QuerySnapshot docref =
        await FirebaseFirestore.instance.collection("franchises").get();
    dynamic newData = {};
    for (dynamic val in docref.docs) {
      newData = val.data();
      log("New Data : $newData");
    }
    // log(teamName.toString());
    // DocumentSnapshot docRef = await FirebaseFirestore.instance
    //     .collection("franchises")
    //     .doc(teamName)
    //     .get();
    // log("hello");
    // dynamic mapData = docRef.data();
    // log("Map data : $mapData");
    // log("hello");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return IplTeam(
        newData: newData,
        team: teamName,
      );
    }));
    // log(mapData.toString());
    // log("Map data : $mapData");
  }

  static void putFirebaseStorageData(
    String name,
    File path,
  ) async {
    Reference ref = FirebaseStorage.instance.ref().child("images/$name");
    UploadTask task = ref.putFile(path);
    final snapshot = await task;

    String url = await snapshot.ref.getDownloadURL();
    downLoadUrl = url;
  }
}
