import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({super.key});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  List<Map<String,dynamic>> modulelist = [
    {
      'image': Appimage.boq,
      'title': 'BOQ',
      'subtitle': 'Bill of Quantities details',
      'route': Appnames.boq,
    },
     {
      'image': Appimage.sitedraw,
      'title': 'Site Drawing',
      'subtitle': 'Uploaded plans & revisions',
      'route': Appnames.sitedraw,
    },
     {
      'image': Appimage.scheduleproject,
      'title': 'Schedule',
      'subtitle': 'Daily, Weekly, Monthly, Project schedule, etc..',
      'route': Appnames.schedule,
    },
     {
      'image': Appimage.workdone,
      'title': 'Work Done',
      'subtitle': 'Daily / Weekly updates',
    },
     {
      'image': Appimage.dailylabor,
      'title': 'Daily Labor Report',
      'subtitle': 'Attendance, hours, cost',
    },
     {
      'image': Appimage.materialreceived,
      'title': 'Material Received',
      'subtitle': 'Logs with receipts',
      'route': Appnames.materialreceived,
    },
     {
      'image': Appimage.materialissue,
      'title': 'Material Issued',
      'subtitle': 'Tracking usage',
      'route': Appnames.materialissue
    },
     {
      'image': Appimage.stockregister,
      'title': 'Stock Register',
      'subtitle': 'Available site inventory',
      'route':Appnames.stockregister,
    },
     {
      'image': Appimage.requestproject,
      'title': 'Requests',
      'subtitle': 'Site requests raised',
      'route': Appnames.requestscreen,
    },
         {
      'image': Appimage.siteassets,
      'title': 'Site Assets',
      'subtitle': 'Tools, equipment at site',
      'route': Appnames.siteassets,
    },
         {
      'image': Appimage.weekbilling,
      'title': 'Weekly Billing',
      'subtitle': 'Site-level billing',
    },
         {
      'image': Appimage.reconciliation,
      'title': 'Reconciliation',
      'subtitle': 'Planned vs Actual comparison',
    },

         {
      'image': Appimage.planned,
      'title': 'Planned vs Achieved',
      'subtitle': 'KPI graphs',
    },
         {
      'image': Appimage.entry,
      'title': 'Machinery Entry',
      'subtitle': 'Machinery in/out register',
    },

   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            48.vspace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back,color: Color(0xff121417)),
                  onPressed: (){
                    Get.to(NavigationScreen(index: 1));
                  }),
                  24.hspace,
                  Text('Central Mall Construction',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withValues(alpha: 0.25),
            ),
            24.vspace,
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child:  Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1, color: Color(0xffDDDDDD)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(Appimage.mallconstruction,fit: BoxFit.fill,width: MediaQuery.of(context).size.width),
                          Text(
                            'Ongoing',
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(color: Color(0xffFF9500)),
                          ),
                          Text(
                            'Central Mall Construction',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Project Code: CB2023-005',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: Color(0xff61758A)),
                          ),
                          16.vspace,
                          Text(
                            '  65% Complete',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.vspace,
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width / 1.2,
                            lineHeight: 12.0,
                            percent: 0.5,
                            barRadius: Radius.circular(6),
                            backgroundColor: Color(0xffDBE0E5),
                            progressColor: Color(0xff008000),
                          ),
                          24.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                Text('Budget',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff61758A)
                                ),
                              ),
                              8.vspace,
                                  Text('Start Date',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff61758A)
                                ),
                              ),
                              8.vspace,
                               Text('End Date',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff61758A)
                                ),
                              ),
                                ],
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   Text('₹ 2.5 Cr',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.vspace,
                                  Text('2024-03-15',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.vspace,
                               Text('2024-12-31',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                                ],
                              ),
                            ],
                          ),
                          16.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(Appimage.location),
                              16.hspace,
                              Text('Site Location',style: Theme.of(context).textTheme.bodyMedium,)
                            ],
                          ),
                        ],
                      ),
                    ),),
                   16.vspace,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text('Modules',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          16.vspace,
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: modulelist.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.only(left: 16,right: 16),
                        itemBuilder: (context,index){
                          final item = modulelist[index];
                          return InkWell(
                            onTap: (){
                            Get.toNamed(item['route']);
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xffDDDDDD),
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(item['image']),
                                      Image.asset(Appimage.rightarrow),
                                    ],
                                  ),
                                  16.vspace,
                                  Text(item['title'],style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                  ),),
                                  8.vspace,
                                   Text(item['subtitle'],style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff61758A)
                                  ),),
                                ],
                              ),
                            ),
                          );
                        })             
          ],
        ),
      ),
    );
  }
}