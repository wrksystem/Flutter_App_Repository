import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_and_register_screens/views/screens/login.dart';

void main() {
  runApp(const GetMaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
    title: 'Login and Register Screens',
  ));
}