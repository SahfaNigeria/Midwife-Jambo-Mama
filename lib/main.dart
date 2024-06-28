import 'dart:io';
import "package:firebase_core/firebase_core.dart";
import 'package:flutter/material.dart';
import 'package:jambomama_midwives/midwives/views/auth/auth_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyA2WJFkv33A7eWnZYb_1_lxKKYCIXpmULE",
              appId: "1:501778526252:android:42616f1c0fe1b4484ea189",
              messagingSenderId: "501778526252",
              projectId: "jambo-mama-nigeria",
              storageBucket: "gs://jambo-mama-nigeria.appspot.com"))
      : Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MidwiveAuthScreen(),
      builder: EasyLoading.init(),
    );
  }
}
