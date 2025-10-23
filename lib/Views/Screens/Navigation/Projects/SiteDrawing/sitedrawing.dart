import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class SiteDrawingScreen extends StatefulWidget {
  const SiteDrawingScreen({super.key});

  @override
  State<SiteDrawingScreen> createState() => _SiteDrawingScreenState();
}

class _SiteDrawingScreenState extends State<SiteDrawingScreen> {
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
                  Text('Site Drawing',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                child: InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.sitedrawdetails);
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Dismantling clearing away and...',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('BOQ Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Drawing Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Price',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(Appimage.rightarrow,height: 22,width: 22),
                              4.vspace,
                               Text('',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('cu.m',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('₹1,03,733.00',style: Theme.of(context).textTheme.bodyMedium),
                            ],
                          )
                        ],
                       ),
                      ],
                    ),
                  ),
                ),
              ),
              16.vspace,
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.sitedrawdetails);
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Item #2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Dismantling clearing away and...',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('BOQ Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Drawing Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Price',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(Appimage.rightarrow,height: 22,width: 22),
                              4.vspace,
                               Text('',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('cu.m',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('₹1,03,733.00',style: Theme.of(context).textTheme.bodyMedium),
                            ],
                          )
                        ],
                       ),
                      ],
                    ),
                  ),
                ),
              ),
              16.vspace,
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.sitedrawdetails);
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Item #3',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Dismantling clearing away and...',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('BOQ Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Drawing Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                              4.vspace,
                               Text('Price',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A),
                              ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(Appimage.rightarrow,height: 22,width: 22),
                              4.vspace,
                               Text('',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('150.00',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('cu.m',style: Theme.of(context).textTheme.bodyMedium),
                              4.vspace,
                               Text('₹1,03,733.00',style: Theme.of(context).textTheme.bodyMedium),
                            ],
                          )
                        ],
                       ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}