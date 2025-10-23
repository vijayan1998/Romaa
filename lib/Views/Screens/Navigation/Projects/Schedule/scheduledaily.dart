import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/Schedule/dailydetails.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ScheduleDaily extends StatefulWidget {
  const ScheduleDaily({super.key});

  @override
  State<ScheduleDaily> createState() => _ScheduleDailyState();
}

class _ScheduleDailyState extends State<ScheduleDaily> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(Appnames.dailydetails);
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffDDDDDD),
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           Image.asset(Appimage.rightarrow)
                            ],),
                           4.vspace,
                            Text('Retaining Wall',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                             fontWeight: FontWeight.bold,
                           ),),
                           4.vspace,
                            Text('Earthwork',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Concrete - 0.4*0.3m',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Raft Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                          ],
                        ),
                      ),
                    ),
                    8.vspace,
                    InkWell(
                      onTap: (){
                        DailyDetails();
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffDDDDDD),
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text('Item #2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           Image.asset(Appimage.rightarrow)
                            ],),
                           4.vspace,
                            Text('Retaining Wall',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                             fontWeight: FontWeight.bold,
                           ),),
                           4.vspace,
                            Text('Earthwork',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Concrete - 0.4*0.3m',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Raft Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                          ],
                        ),
                      ),
                    ),
                    8.vspace,
                    InkWell(
                      onTap: (){
                        DailyDetails();
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffDDDDDD),
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text('Item #3',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           Image.asset(Appimage.rightarrow)
                            ],),
                           4.vspace,
                            Text('Retaining Wall',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                             fontWeight: FontWeight.bold,
                           ),),
                           4.vspace,
                            Text('Earthwork',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Shear Key Concrete - 0.4*0.3m',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                           4.vspace,
                            Text('Raft Reinforcement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                             color: Color(0xff61758A),
                           ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}