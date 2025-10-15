import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
                  Image.asset(Appimage.task),
                  16.hspace,
                  Text(
                    'Projects',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(Appimage.search),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: Colors.grey.withValues(alpha: 0.25)),
            8.vspace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF0F2F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Status',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        8.hspace,
                        Image.asset(Appimage.uparrow),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF0F2F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        8.hspace,
                        Image.asset(Appimage.uparrow),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF0F2F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Priority',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        8.hspace,
                        Image.asset(Appimage.uparrow),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: Color(0xffDDDDDD)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Appnames.projectdetails);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F2F5),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View Details',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleSmall,
                                        ),
                                        Icon(Icons.arrow_forward_ios, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(Appimage.mall),
                          ],
                        ),
                        8.vspace,
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
                        )
                      ],
                    ),
                  ),
                  8.vspace,
                    Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: Color(0xffDDDDDD)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Completed',
                                  style: Theme.of(context).textTheme.titleSmall!
                                      .copyWith(color: Color(0xff008000)),
                                ),
                                Text(
                                  'Renovation of \nCommercial Building',
                                  style: Theme.of(context).textTheme.titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Project Code: CB2023-005',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                16.vspace,
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Appnames.projectdetails);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F2F5),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View Details',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleSmall,
                                        ),
                                        Icon(Icons.arrow_forward_ios, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(Appimage.renovation),
                          ],
                        ),
                        8.vspace,
                        Text(
                          '  100% Complete',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        8.vspace,
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width / 1.2,
                          lineHeight: 12.0,
                          percent: 1,
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
                        )
                      ],
                    ),
                  ),
                  8.vspace,
                    Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: Color(0xffDDDDDD)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'On Hold',
                                  style: Theme.of(context).textTheme.titleSmall!
                                      .copyWith(color: Color(0xffFF0000)),
                                ),
                                Text(
                                  'Infrastructure Upgrade \nfor Industrial Park',
                                  style: Theme.of(context).textTheme.titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Project Code: IP2024-002',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                16.vspace,
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Appnames.projectdetails);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F2F5),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View Details',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleSmall,
                                        ),
                                        Icon(Icons.arrow_forward_ios, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(Appimage.mall),
                          ],
                        ),
                        8.vspace,
                        Text(
                          '  30% Complete',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        8.vspace,
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width / 1.2,
                          lineHeight: 12.0,
                          percent: 0.3,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
