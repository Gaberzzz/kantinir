import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kantinir/app/modules/Onboarding2/views/onboarding2_view.dart';

import '../controllers/onboarding1_controller.dart';

class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const Onboarding2View());
        },
        child: Center(
          child: RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'KAN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
                TextSpan(
                  text: 'TINIR',
                  style: TextStyle(
                      color: Color(0xFF59CCB5),
                      fontSize: 64,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
