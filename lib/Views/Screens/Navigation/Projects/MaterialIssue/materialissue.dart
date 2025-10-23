import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class MaterialIssue extends StatefulWidget {
  const MaterialIssue({super.key});

  @override
  State<MaterialIssue> createState() => _MaterialIssueState();
}

class _MaterialIssueState extends State<MaterialIssue> {
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
                    Text('Material Issued',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                  child: Container(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Text('Central Mall Construction',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              ),),
                              Spacer(),
                           InkWell(
                                  onTap: (){
                                     setState(() {
                                       customTileExpanded = !customTileExpanded;
                                     });
                                  },
                                  child: Image.asset(Appimage.materialedit)),
                              16.hspace,
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
                              title:  Text('Issued Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('450',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                          ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Work Location',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('Chennai',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                          ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Priority Level',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('Urgent',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                           ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Requested By',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('John',style: Theme.of(context).textTheme.bodyMedium),
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
                          ],
                        )
                       : SizedBox(),
                      ],
                    ),
                  ),
                ),
                8.vspace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Text('Central Mall Construction',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              ),),
                              Spacer(),
                           InkWell(
                                  onTap: (){
                                     setState(() {
                                       customTileExpanded = !customTileExpanded;
                                     });
                                  },
                                  child: Image.asset(Appimage.materialedit)),
                              16.hspace,
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
                              title:  Text('Issued Qty',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('450',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                          ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Work Location',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('Chennai',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                          ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Priority Level',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('Urgent',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                           ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title:  Text('Requested By',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ),),
                              trailing: Text('John',style: Theme.of(context).textTheme.bodyMedium),
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
                          ],
                        )
                       : SizedBox(),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
       floatingActionButton:  Padding(
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
                            title:  Text('Material',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                            title:Text('Unit',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                            title:  Text('Quantity',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                                    hint: Text('450',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Color(0xff424242),
                                    ),)
                                  ),
                                ),
                              ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title:  Text('Material taken by',style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                                    hint: Text('Name',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                            Get.toNamed(Appnames.materialissue);
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
     
    );
  }
}