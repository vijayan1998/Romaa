import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class BOQViewScreen extends StatefulWidget {
  const BOQViewScreen({super.key});

  @override
  State<BOQViewScreen> createState() => _BOQViewScreenState();
}

class _BOQViewScreenState extends State<BOQViewScreen> {
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
                  Get.toNamed(Appnames.boq);
                }, 
                icon: Icon(Icons.arrow_back)),
                16.hspace,
                Text('BOQ',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                  Container(
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
                        Text('Item 1: Concrete work for building foundation',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Quantity',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Final Rate',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Amount',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                8.vspace,
                                Text('150',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('cu.m',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('₹5,000/cu.m',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('₹750,000',style: Theme.of(context).textTheme.bodyMedium),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Description',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xff61758A),
                      )),
                      4.vspace,
                          Text('Concrete work for building foundation',style: Theme.of(context).textTheme.titleSmall,),
                      ],
                    ),
                  ),
                  16.vspace,
                  Text('Breakdown',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),),
                  8.vspace,
                   Container(
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
                        Text('#23523',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),),
                        8.vspace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Co Efficient',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                                Text('Cost',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Rate',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                          8.vspace,
                          Text('Amount',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A),
                          ),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('R/A co efficient',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('₹1,480.00 ',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('Month',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('₹750,000',style: Theme.of(context).textTheme.bodyMedium),
                                8.vspace,
                                Text('₹750,000',style: Theme.of(context).textTheme.bodyMedium),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  16.vspace,
                  Text('Additional Calculations',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),),
                  16.vspace,
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Total Weightage %',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('100%',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Wastage Amount',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Handling Charges',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Qualifier value',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Base rate per cum',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width /2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Rounding off',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  16.vspace,
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Loading/Unloading',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        8.vspace,
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Base Total/Rate per cum',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('₹750,000 / ₹5,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Qualifier Total for 1000 cum',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('₹0',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Qualifier rate per cum',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('₹750,000 / ₹5,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width /2.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDDDDDD)
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Net rate',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('₹750,000 / ₹5,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff61758A),
                        ),),
                      ],
                    ),
                  ),
                  16.vspace,
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}