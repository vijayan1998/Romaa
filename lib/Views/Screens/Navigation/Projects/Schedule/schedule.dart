import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/scheduledaily.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> with TickerProviderStateMixin {
 late TabController tabController;
  bool isVisible = false;
  @override
  void initState(){
    super.initState();
      tabController = TabController(length: 6, vsync: this);
    tabController.addListener((){
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             48.vspace,
                Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Get.toNamed(Appnames.projectdetails);
                    }, 
                    icon: Icon(Icons.arrow_back)),
                    16.hspace,
                    Text( tabController.index == 0 ? 'Schedule - Daily'
                    : tabController.index == 1 ? 'Schedule - Weekly'
                    : tabController.index == 2 ? 'Schedule - Monthly'
                    : tabController.index == 3 ? 'Schedule - Project Schedule'
                    : tabController.index == 4? 'Schedule - Man Power Histogram'
                    : tabController.index == 5 ? 'Schedule - Machinery Schedule' : 'Schedule - Daily',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                      Spacer(),
                      Image.asset(Appimage.filter),
                  ],
                ),),
                Divider(
                  thickness: 2,
                  color: Colors.grey.withValues(alpha: 0.25),
                ),
                TabBar(
                  padding: EdgeInsets.all(0),
                  controller: tabController,
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  automaticIndicatorColorAdjustment: false,
                  indicatorWeight: 1.0,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 0 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    alignment: Alignment.center,     
                    child: Text('Daily',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tabController.index == 0 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                    Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 1 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    alignment: Alignment.center,     
                    child: Text('Weekly',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: tabController.index == 1 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                    Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 2 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    child: Text('Monthly',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tabController.index == 2 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                 Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 3 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    child: Text('Project Schedule',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tabController.index == 3 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                 Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 4 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    child: Text('Man Power Histogram',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tabController.index == 4 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                 Tab(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tabController.index == 5 ?Color(0xff314366) : Color(0xffF0F2F5)
                    ),
                    child: Text('Machinery Schedule',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tabController.index == 5 ? Color(0xffFFFFFF) : Color(0xff121417),
                    ),),
                  ),
                ),
                ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ScheduleDaily(),
                      ScheduleDaily(),
                      ScheduleDaily(),
                      ScheduleDaily(),
                      ScheduleDaily(),
                      ScheduleDaily(),
                      
                    ]),
                )
          ],
        ),
      ),
    );
  }
}