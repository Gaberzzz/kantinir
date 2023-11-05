import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft, // Align to the top-left corner
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Add padding as needed
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Color(0xFF22A1BB),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),

            const SizedBox(height: 100),

            // "Let's get you in!" Text
            const Text(
              "Create your",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Email Box with Icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email, color: Color(0xFFB6B6B6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Password Box with Icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock, color: Color(0xFFB6B6B6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
                  prefixIcon: Icon(Icons.lock, color: Color(0xFFB6B6B6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // "Sign In" Button
            SizedBox(
              width: 300,
              height: 34,
              child: ElevatedButton(
                onPressed: () {
                  // Add action when the "Sign In" button is clicked
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF11CDA7), // Set the button color to #11CDA7
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Make the button rounded
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 180),
          ],
        ),
      )),
    );
  }
}
