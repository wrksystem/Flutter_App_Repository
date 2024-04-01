import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF009),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: const Text(
                    'Register New User',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),                
              ],
            )),
        ),
      )
    );
  }
}