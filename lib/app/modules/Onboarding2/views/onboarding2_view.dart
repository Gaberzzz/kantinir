import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kantinir/app/modules/SignIn/views/sign_in_view.dart';

import '../controllers/onboarding2_controller.dart';

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Map Image
            Image.asset('images/mapicon.png', width: 200, height: 200),

            // Text
            const Text(
              'The best place for finding affordable food and a place to stay',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Navigate to the SignIn page when the button is clicked
                Get.to(() => const SignInView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF11CDA7), // Set the button color to #11CDA7
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // Make the button rounded
                ),
              ),
              child: const Text(
                "Let's Get You Started!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
