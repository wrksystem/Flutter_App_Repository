// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_and_register_screens/views/screens/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF009),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/chefelogo.png",
                  fit: BoxFit.cover,
                  height: 230,
                  width: 180,
                  ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Username',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(
                height: 30,
      
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username'
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Password',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(
                height: 30,
      
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password'
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 45,
                  width: 90,
                  child: const Center(
                    child: const Text('Login', style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,                  
                  )),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(const RegisterScreen());
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                  ),
                ],
              ),
              ],
            )
          ),
        ),
      ),
    );
  }
}