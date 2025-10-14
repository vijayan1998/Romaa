import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Widgets/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
   final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            children: [
              OnboardingWidget(
                bannerimage: Appimage.onboard,
                image1: Appimage.task,
                image2: Appimage.schedule,
                image3: Appimage.billing,
                image4: Appimage.report,
                pageController: pageController, 
              text: 'Task Tracking', text1: 'Scheduling', text2: 'Billing', text3: 'Reports', 
              title: 'Manage All Your Projects in One Place', 
              subtitle: 'Track BOQ, schedules, and billing—all inside a powerful dashboard.', 
              buttonColor:Color(0xff314366),
              onPressed: (){
                pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
              },
              onTap: (){
                 Get.toNamed(Appnames.login);
              },), 
              OnboardingWidget(
                bannerimage: Appimage.onboard2,
                 image1: Appimage.material,
                image2: Appimage.approve,
                image3: Appimage.site,
                image4: Appimage.stock,
              pageController: pageController, 
              text: 'Material \nRequests', text1: 'Approvals', text2: 'Site Assets', text3: 'Stock Register', 
              title: 'Procurement Made Smarter', 
              subtitle: 'Request, approve, and track materials with ease. Stay updated on what’s received and issued at your sites.', 
              buttonColor:Color(0xff314366),
              onPressed: (){
                pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
              },
              onTap: (){
                 Get.toNamed(Appnames.login);
              },), 
               OnboardingWidget(
                bannerimage: Appimage.onboard3,
                 image1: Appimage.plan,
                image2: Appimage.billing,
                image3: Appimage.labor,
                image4: Appimage.report,
                pageController: pageController, 
              text: 'Planned vs\n Achieved', text1: 'Billing & \nReconciliation', text2: 'Labor \nReports', text3: 'Smart \nAnalytics', 
              title: 'Stay Ahead with Smart Insights', 
              subtitle: 'From daily labor reports to financial analytics, get the clarity you need to make better project decisions.', 
              buttonColor:Color(0xff314366),
              onPressed: (){
                Get.toNamed(Appnames.login);
              },
              onTap: (){
                 Get.toNamed(Appnames.login);
              },),       
            ],
          ))
        ],
      )
    );
  }
}