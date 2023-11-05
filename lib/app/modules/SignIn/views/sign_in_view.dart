import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kantinir/app/modules/SignUp/views/sign_up_view.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Person Image
            Image.asset('images/person1.png', width: 280, height: 280),

            const SizedBox(height: 20),

            // "Let's get you in!" Text
            const Text(
              "Let's get you in!",
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
            const SizedBox(height: 20),

            // "Don't have an account? Sign up" Text
            GestureDetector(
              onTap: () {
                Get.to(() => const SignUpView());
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
