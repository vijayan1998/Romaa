import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class AllSiteScreen extends StatefulWidget {
  const AllSiteScreen({super.key});

  @override
  State<AllSiteScreen> createState() => _AllSiteScreenState();
}

class _AllSiteScreenState extends State<AllSiteScreen> {
  bool customTileExpanded = false;
  bool isVisible = false;
  bool isclose = false;
  TextEditingController photo =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      child: SingleChildScrollView(
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
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: Color(0xffDDDDDD),
                ),
              ),
              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text('Status: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                 Text('Request Sent',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff008000)
                                ),),
                               ],
                             ),
                            4.vspace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('Excavator',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                                  title:  Text('Type',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing:  Text('Machine',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:   Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Text('1',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Date',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                  trailing: Text('18.08.2025',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Attachments',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width:26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    ),
                                    4.vspace,
                                     Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                ),
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                8.vspace,
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium),
                              ],
                            )
                           : SizedBox(),
                          ],
                        ),
            ),
            8.vspace,
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: Color(0xffDDDDDD),
                ),
              ),
              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text('Status: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                 Text('Request Sent',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff008000)
                                ),),
                               ],
                             ),
                            4.vspace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('Excavator',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                                  title:  Text('Type',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing:  Text('Machine',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:   Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Text('1',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Date',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                  trailing: Text('18.08.2025',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Attachments',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width:26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    ),
                                    4.vspace,
                                     Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                ),
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                8.vspace,
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium),
                              ],
                            )
                           : SizedBox(),
                          ],
                        ),
            ),
            16.vspace,
             Text('This Week',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
            ),),
            8.vspace,
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: Color(0xffDDDDDD),
                ),
              ),
              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text('Status: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                 Text('Request Sent',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff008000)
                                ),),
                               ],
                             ),
                            4.vspace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text('Excavator',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  ),),
                               InkWell(
                                      onTap: (){
                                         setState(() {
                                           isclose = !isclose;
                                         });
                                      },
                                      child: Image.asset(Appimage.dropdown)),
                              ],
                            ),
                            isclose ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Type',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing:  Text('Machine',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:   Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Text('1',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Date',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                  trailing: Text('18.08.2025',style: Theme.of(context).textTheme.bodyMedium),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title:  Text('Attachments',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width:26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    ),
                                    4.vspace,
                                     Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                ),
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff61758A)
                                ),),
                                8.vspace,
                                 Text('Note',style: Theme.of(context).textTheme.bodyMedium),
                              ],
                            )
                           : SizedBox(),
                          ],
                        ),
            ),
            24.vspace,
            Align(
              alignment: Alignment.bottomRight,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () => showDialog(context: context, 
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                      backgroundColor: Color(0xffFFFFFF),    
                      title: SingleChildScrollView(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: const Icon(Icons.cancel_rounded,
                                    color: Colors.black, size: 36),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            24.vspace,
                            Center(
                              child: Text('Add Material Issued',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            16.vspace,
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Asset Name',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),),
                              trailing:  SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    style: Theme.of(context).textTheme.bodyMedium!
                                        .copyWith(color: Color(0xff424242)),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color: Color(0xffD0D6FF),
                                          width: 1.0,
                                        ),
                                      ),
                                      hint: Text('Cement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Color(0xff424242),
                                      ),)
                                    ),
                                  ),
                                ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:Text('Type',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),),
                              trailing: SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    style: Theme.of(context).textTheme.bodyMedium!
                                        .copyWith(color: Color(0xff424242)),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color: Color(0xffD0D6FF),
                                          width: 1.0,
                                        ),
                                      ),
                                      hint: Text('Bags',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Color(0xff424242),
                                      ),)
                                    ),
                                  ),
                                ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Unit',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),),
                              trailing: SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextField(
                                    readOnly: true,
                                    keyboardType: TextInputType.text,
                                    style: Theme.of(context).textTheme.bodyMedium!
                                        .copyWith(color: Color(0xff424242)),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color: Color(0xffD0D6FF),
                                          width: 1.0,
                                        ),
                                      ),
                                      hint: Text('1',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Color(0xff424242),
                                      ),)
                                    ),
                                  ),
                                ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Date',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),),
                              trailing:   SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextField(
                                    readOnly: true,
                                    keyboardType: TextInputType.text,
                                    style: Theme.of(context).textTheme.bodyMedium!
                                        .copyWith(color: Color(0xff424242)),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color: Color(0xffD0D6FF),
                                          width: 1.0,
                                        ),
                                      ),
                                      hint: Text('18.08.2025',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Color(0xff424242),
                                      ),)
                                    ),
                                  ),
                                ),
                            ),
                            16.vspace,
                             Text('Note',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),),
                            8.vspace,
                            TextField(
                                maxLines: 5,
                                minLines: 2,
                                    keyboardType: TextInputType.text,
                                    style: Theme.of(context).textTheme.bodyMedium!
                                        .copyWith(color: Color(0xff424242)),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color: Color(0xffD0D6FF),
                                          width: 1.0,
                                        ),
                                      ),
                                      hint: Text('Description',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Color(0xff424242),
                                      ),)
                                    ),
                                  ),
                              12.vspace,
                               TextField(
                      controller:photo,
                       style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(color: Color(0xff424242)),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xffD0D6FF),
                                      width: 1.0,
                                    ),
                                  ),
                                  suffixIcon: Image.asset(Appimage.rightarrow),
                                  hint: Text('Attachments (Add photos)',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                    ),
                    16.vspace,
                               Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.0,
                                  color: Color(0xff424242)
                                ),
                                borderRadius: BorderRadiusGeometry.circular(2),
                              ),
                              
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                          child: Text('Cancel',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Color(0xff424242)
                          ),)),
                          16.hspace,
                           ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff314165),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(2),
                              ),
                            ),
                            onPressed: (){
                              Get.toNamed(Appnames.siteassets);
                            }, 
                          child: Text('Save',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Color(0xffFFFFFF)
                          ),))
                        ],
                      ),
                          ],
                        ),
                      ),
                    )),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xff314366),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.add,color: Color(0xffFFFFFF),),
                    ),
                  ),
                ),
              ),
            ),
            16.vspace,
          ],
        ),
      ),
    );
  }
}