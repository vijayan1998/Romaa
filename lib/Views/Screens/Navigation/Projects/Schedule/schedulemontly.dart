import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:romaa/Views/Widgets/schedule_monthly.dart';

class ScheduleMonthly extends StatefulWidget {
  const ScheduleMonthly({super.key});

  @override
  State<ScheduleMonthly> createState() => _ScheduleMonthlyState();
}

class _ScheduleMonthlyState extends State<ScheduleMonthly> {
  List<bool> isVisible = [false,false,false,false];
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
                        Get.toNamed(Appnames.schedule);
                      }, 
                      icon: Icon(Icons.arrow_back)),
                      16.hspace,
                      Text('Schedule - Monthly',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                  16.vspace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                     color: Color(0xff61758A),
                   ),),
                   4.vspace,
                    Text('Retaining Wall',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                     fontWeight: FontWeight.bold,
                   ),),
                   16.vspace,
              ScheduleMonthlyWidget(title: 'Earthwork',isVisible: isVisible[0], onPressed: (){
                setState(() {
                  isVisible[0] = !isVisible[0];
                });
              },),
              4.vspace,
              ScheduleMonthlyWidget(title: 'Shear Key Reinforcement',isVisible: isVisible[1], onPressed: (){
                setState(() {
                  isVisible[1] = !isVisible[1];
                });
              },),
              4.vspace,
               ScheduleMonthlyWidget(title: 'Shear Key Concrete - 0.4*0.3m',isVisible: isVisible[2], onPressed: (){
                setState(() {
                  isVisible[2] = !isVisible[2];
                });
              },),
               4.vspace,
               ScheduleMonthlyWidget(title: 'Raft Reinforcement',isVisible: isVisible[3], onPressed: (){
                setState(() {
                  isVisible[3] = !isVisible[3];
                });
              },),
                8.vspace,

                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}