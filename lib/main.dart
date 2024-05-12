import 'package:fitfusion_app/config/assets.dart';
import 'package:fitfusion_app/screen/login.dart';
// import 'package:fitfusion_app/screen/login.dart';
// import 'package:fitfusion_app/screen/user/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Asset.colorPrimaryGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
