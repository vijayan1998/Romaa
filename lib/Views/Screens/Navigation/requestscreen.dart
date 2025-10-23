import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
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
                   IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: Icon(Icons.arrow_back)),
                  16.hspace,
                  Text(
                    'Requests',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              ),
            ),
            Divider(thickness: 2, color: Colors.grey.withValues(alpha: 0.25)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff314366),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'All',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffF0F2F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Pending',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffF0F2F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Approved',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffF0F2F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Rejected',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffF0F2F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Completed',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            24.vspace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  16.vspace,
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffDDDDDD)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Material Request #1234',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff61758A),
                                  ),
                            ),
                            8.vspace,
                            Text(
                              'Cement, Steel Bars, Bricks',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            8.vspace,
                            Container(
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
                                  Icon(Icons.arrow_forward_ios, size: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(Appimage.cement),
                      ],
                    ),
                  ),
                  8.vspace,
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffDDDDDD)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Purchase Order #5678',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff61758A),
                                  ),
                            ),
                            8.vspace,
                            Text(
                              'Concrete Mixer',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            8.vspace,
                            Container(
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
                                  Icon(Icons.arrow_forward_ios, size: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(Appimage.mixer),
                      ],
                    ),
                  ),
                  24.vspace,
                  Text(
                    'This Week',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  12.vspace,
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffDDDDDD)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Escalation #9012',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff61758A),
                                  ),
                            ),
                            8.vspace,
                            Text(
                              'Delay in Material Delivery',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            8.vspace,
                            Container(
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
                                  Icon(Icons.arrow_forward_ios, size: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(Appimage.delay),
                      ],
                    ),
                  ),
                  16.vspace,
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
             content: ConstrainedBox(
              constraints: const BoxConstraints(
          maxHeight: 150.0, // Set maximum height
          maxWidth: 400.0,  // Set maximum width
          minHeight: 100.0, // Set minimum height
          minWidth: 300.0,  // Set minimum width
        ),),
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
                        icon: const Icon(
                          Icons.cancel_rounded,
                          color: Colors.black,
                          size: 36,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    16.vspace,
                    Center(
                      child: Text(
                        'Requests',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    16.vspace,
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        'Material',
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
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
                            hint: Text(
                              'Cement',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(0xff424242)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        'Unit',
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
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
                            hint: Text(
                              'Bags',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(0xff424242)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        'Quantity',
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
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
                            hint: Text(
                              '450',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(0xff424242)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    16.vspace,
                    Text(
                      'Note',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.vspace,
                    TextField(
                      maxLines: 5,
                      minLines: 2,
                      keyboardType: TextInputType.text,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xff424242),
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xffD0D6FF),
                            width: 1.0,
                          ),
                        ),
                        hint: Text(
                          'Description',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: Color(0xff424242)),
                        ),
                      ),
                    ),
                    24.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.0,
                                color: Color(0xff424242),
                              ),
                              borderRadius: BorderRadiusGeometry.circular(2),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(color: Color(0xff424242)),
                          ),
                        ),
                        16.hspace,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff314165),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(2),
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed(Appnames.requestscreen);
                          },
                          child: Text(
                            'Save',
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xff314366),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.add, color: Color(0xffFFFFFF)),
          ),
        ),
      ),
    );
  }
}
