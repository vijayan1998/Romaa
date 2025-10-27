import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:romaa/Views/Widgets/retainingwall.dart';

class ProjectSchedule extends StatefulWidget {
  const ProjectSchedule({super.key});

  @override
  State<ProjectSchedule> createState() => _ProjectScheduleState();
}

class _ProjectScheduleState extends State<ProjectSchedule> {
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
                      Text('Schedule - Project schedule',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
              RetainingWall(title: 'Earthwork', status: 'Planned', statucolor: Color(0xffFF6F00),),
              4.vspace,
              RetainingWall(title: 'Shear Key Reinforcement', status: 'Completed', statucolor: Color(0xff008000)),
              4.vspace,
               RetainingWall(title: 'Shear Key Concrete - 0.4*0.3m', status: 'Planned', statucolor: Color(0xffFF6F00),),
               4.vspace,
                RetainingWall(title: 'Raft Reinforcement', status: 'Planned', statucolor: Color(0xffFF6F00),),
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