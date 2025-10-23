import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class StockRegister extends StatefulWidget {
  const StockRegister({super.key});

  @override
  State<StockRegister> createState() => _StockRegisterState();
}

class _StockRegisterState extends State<StockRegister> {
  bool customTileExpanded = false;
  bool isVisible = false;
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
                      Text('Stock Register',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Today',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                      8.vspace,
                       Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffDDDDDD)
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A)
                          ),),
                          4.vspace,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text('Central Mall Construction',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                ),),
                             InkWell(
                                    onTap: (){
                                       setState(() {
                                         customTileExpanded = !customTileExpanded;
                                       });
                                    },
                                    child: Image.asset(Appimage.dropdown)),
                            ],
                          ),
                          customTileExpanded ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Material Name',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing:  Text('Cement',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:   Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing: Text('Bags',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Quantity',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('50',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Opening Stock',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('500',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Stock taken',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('400',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                             ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Balance',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('100',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Status',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing: Text('In stock',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ],
                          )
                         : SizedBox(),
                        ],
                      ),
                    ),
                    24.vspace,
                     Text('This Week',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),),
                      8.vspace,
                       Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffDDDDDD)
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Text('Item #1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xff61758A)
                          ),),
                          4.vspace,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text('Central Mall Construction',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                ),),
                             InkWell(
                                    onTap: (){
                                       setState(() {
                                         isVisible = !isVisible;
                                       });
                                    },
                                    child: Image.asset(Appimage.dropdown)),
                            ],
                          ),
                          isVisible ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Material Name',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing:  Text('Cement',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:   Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing: Text('Bags',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Quantity',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('50',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Opening Stock',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('500',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Stock taken',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('400',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                             ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Balance',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                                trailing: Text('100',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text('Status',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xff61758A)
                              ),),
                              trailing: Text('In stock',style: Theme.of(context).textTheme.bodyMedium),
                              ),
                            ],
                          )
                         : SizedBox(),
                        ],
                      ),
                    ),
                    ],
                  ),),
          ],
        ),
      ),
    );
  }
}