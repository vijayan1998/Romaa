import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:romaa/Views/Screens/Navigation/Profile/appsetting.dart';
import 'package:romaa/Views/Screens/Navigation/Profile/changepassword.dart';
import 'package:romaa/Views/Screens/Navigation/Profile/helpsupport.dart';
import 'package:romaa/Views/Screens/Navigation/Profile/profileedit.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/MaterialIssue/materialissue.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/MaterialReceived/materialreceived.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/dailydetails.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/machinaryschedule.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/manpower.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/projectschedule.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/schedule.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/scheduledaily.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/schedulemontly.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/scheduleweekly.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/SiteAssets/siteassets.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/SiteDrawing/sitedrawing.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/SiteDrawing/sitedrawingdetails.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Stock/stockregister.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/boq.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/boqview.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/projectdetails.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Screens/Navigation/requestscreen.dart';
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
    GetPage(
      name: Appnames.sitedraw,
      page: () => SiteDrawingScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.sitedrawdetails,
      page: () => SiteDetailsScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.schedule,
      page: () => ScheduleScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.scheduledaily,
      page: () => ScheduleDaily() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.dailydetails,
      page: () => DailyDetails() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.materialreceived,
      page: () => MaterialReceived() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.materialissue,
      page: () => MaterialIssue() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.stockregister,
      page: () => StockRegister() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.requestscreen,
      page: () => RequestScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.siteassets,
      page: () => SiteAssets() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.scheduleweekly,
      page: () => ScheduleWeekly() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.schedulemonthly,
      page: () => ScheduleMonthly() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.scheduleproject,
      page: () => ProjectSchedule() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.manpower,
      page: () => ManPowerSchedule() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.machineryschedule,
      page: () => MachinarySchedule() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.profileedit,
      page: () => ProfileEditScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.changepassword,
      page: () => ChangePassword() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: Appnames.appsettings,
      page: () => Appsetting() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
     GetPage(
      name: Appnames.helpsupport,
      page: () => HelpSupport() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
  ];
}