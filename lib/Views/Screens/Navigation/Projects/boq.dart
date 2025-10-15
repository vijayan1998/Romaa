import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class BOQscreen extends StatefulWidget {
  const BOQscreen({super.key});

  @override
  State<BOQscreen> createState() => _BOQscreenState();
}

class _BOQscreenState extends State<BOQscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          48.vspace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Get.toNamed(Appnames.projectdetails);
                }, icon: Icon(Icons.arrow_back)),
                16.hspace,
                Text('BOQ',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
                Spacer(),
                Image.asset(Appimage.filter),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withValues(alpha: 0.25),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffDDDDDD)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff314366)
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text('Concrete work for building foundation',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Text('Quantity: 150 cu.m | Rate: ₹5,000/cu.m | ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                     Text('Amount: ₹750,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.boqview);
                  },
                  child: Image.asset(Appimage.boqview)),
              ],
            ),
          ),
           Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffDDDDDD)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Item #2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff314366)
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text('Concrete work for building foundation',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Text('Quantity: 150 cu.m | Rate: ₹5,000/cu.m | ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                     Text('Amount: ₹750,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.boqview);
                  },
                  child: Image.asset(Appimage.boqview)),
              ],
            ),
          ),
           Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffDDDDDD)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Item #3',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff314366)
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text('Concrete work for building foundation',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Text('Quantity: 150 cu.m | Rate: ₹5,000/cu.m | ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                     Text('Amount: ₹750,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset(Appimage.boqview)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}