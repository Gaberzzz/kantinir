import 'package:get/get.dart';

import '../modules/Onboarding2/bindings/onboarding2_binding.dart';
import '../modules/Onboarding2/views/onboarding2_view.dart';
import '../modules/SignIn/bindings/sign_in_binding.dart';
import '../modules/SignIn/views/sign_in_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding1/bindings/onboarding1_binding.dart';
import '../modules/onboarding1/views/onboarding1_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING1;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING1,
      page: () => const Onboarding1View(),
      binding: Onboarding1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING2,
      page: () => const Onboarding2View(),
      binding: Onboarding2Binding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
