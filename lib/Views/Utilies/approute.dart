import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/boq.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/boqview.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/projectdetails.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Screens/Onboarding/loginscreen.dart';
import 'package:romaa/Views/Screens/Onboarding/onboardingscreen.dart';
import 'package:romaa/Views/Screens/Onboarding/otpscreen.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/splashscreen.dart';

class AppRoute {
  static appRoutes() => [
      GetPage(
      name: Appnames.splash,
      page: () => SplashScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.onboard,
      page: () => OnboardingScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.login,
      page: () => LoginScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.otp,
      page: () => OTPScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.navigationscreen,
      page: () => NavigationScreen(index: 0,) ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.projectdetails,
      page: () => ProjectDetailsScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.boq,
      page: () => BOQscreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.boqview,
      page: () => BOQViewScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
  ];
}