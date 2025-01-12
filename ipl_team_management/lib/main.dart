import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ipl_team_management/profile_page.dart';

void main() async {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDAoDeU4an3_y7KM3JsJtFLDJoxc2OgSp0",
    appId: "1:286869701637:android:a1dfd077d0d9cf2a01c86c",
    messagingSenderId: "286869701637",
    projectId: "cricketinfo-f211a",
    storageBucket: "cricketinfo-f211a.firebasestorage.app",
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ProfilePage());
  }
}
