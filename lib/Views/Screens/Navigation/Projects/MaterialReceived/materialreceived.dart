import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class MaterialReceived extends StatefulWidget {
  const MaterialReceived({super.key});

  @override
  State<MaterialReceived> createState() => _MaterialReceivedState();
}

class _MaterialReceivedState extends State<MaterialReceived> {
  bool customTileExpanded = false;
  bool isVisible = false;
  List<DropdownMenuItem> itemlist = [
    DropdownMenuItem(value: 'Cement', child: Text('Cement')),
    DropdownMenuItem(value: 'Steel', child: Text('Steel')),
    DropdownMenuItem(value: 'Stone', child: Text('Stone')),
    DropdownMenuItem(value: 'Tiles', child: Text('Tiles')),
  ];
  String? selectedValue;
  TextEditingController photo = TextEditingController();
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Appnames.projectdetails);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  16.hspace,
                  Text(
                    'Material Received',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Image.asset(Appimage.filter),
                ],
              ),
            ),
            Divider(thickness: 2, color: Colors.grey.withValues(alpha: 0.25)),
            16.vspace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffDDDDDD)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Item #1',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xff61758A),
                      ),
                    ),
                    4.vspace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Central Mall Construction',
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              customTileExpanded = !customTileExpanded;
                            });
                          },
                          child: Image.asset(Appimage.materialedit),
                        ),
                        16.hspace,
                        InkWell(
                          onTap: () {
                            setState(() {
                              customTileExpanded = !customTileExpanded;
                            });
                          },
                          child: Image.asset(Appimage.dropdown),
                        ),
                      ],
                    ),
                    customTileExpanded
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Material Name',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  'Cement',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Unit',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  'Bags',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'PO Qty',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '100',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Received Qty',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '80',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Pending',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '20',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Ordered Date',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '18.08.2025',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Amount',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '₹2,00,000',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Attachments',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    4.vspace,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                  border: Border.all(width: 2, color: Color(0xffDDDDDD)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Item #1',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xff61758A),
                      ),
                    ),
                    4.vspace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Central Mall Construction',
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !customTileExpanded;
                            });
                          },
                          child: Image.asset(Appimage.materialedit),
                        ),
                        16.hspace,
                        InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Image.asset(Appimage.dropdown),
                        ),
                      ],
                    ),
                    isVisible
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Material Name',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  'Cement',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Unit',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  'Bags',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'PO Qty',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '100',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Received Qty',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '80',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Pending',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '20',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Ordered Date',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '18.08.2025',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Amount',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Text(
                                  '₹2,00,000',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text(
                                  'Attachments',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(0xff61758A)),
                                ),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    4.vspace,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        4.hspace,
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDBDBDB),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
            16.vspace,
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                contentPadding: EdgeInsets.all(0),
                titlePadding: EdgeInsets.all(12),
                content: ConstrainedBox(
                  constraints: const BoxConstraints(
          maxHeight: 150.0, // Set maximum height
          maxWidth: 400.0,  // Set maximum width
          minHeight: 80.0, // Set minimum height
          minWidth: 300.0,  // Set minimum width
        ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                backgroundColor: Color(0xffFFFFFF),
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    24.vspace,
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
                      child: Text(
                        'Add Material Received',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    16.vspace,
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: const BorderSide(
                            color: Color(0xffD0D6FF),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffD0D6FF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Color(0xffD0D6FF),
                            width: 2.0,
                          ),
                        ),
                      ),
                      style: Theme.of(context).textTheme.titleMedium,
                      iconEnabledColor: Color(0xff1D1D1D),
                      iconSize: 30,
                      hint: Text(
                        'Select Purchase Order',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff424242),
                        ),
                      ),
                      dropdownColor: Color(0xffFFFFFF),
                      items: itemlist,
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                    12.vspace,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Material',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            8.vspace,
                            SizedBox(
                              height: 50,
                              width: 86,
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
                                  hint: Text('Cement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 86,
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
                                  hint: Text('Cement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 86,
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
                                  hint: Text('Cement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 86,
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
                                  hint: Text('Cement',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                          ],
                        ),
                        6.hspace,
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Quantity',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            4.vspace,
                            SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('10',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('10',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('10',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('10',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                          ],
                        ),
                        6.hspace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Received',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            4.vspace,
                            SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('8',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('8',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('8',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('8',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                          ],
                        ),
                        6.hspace,
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Pending',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            4.vspace,
                            SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                            4.vspace,
                             SizedBox(
                              height: 50,
                              width: 56,
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
                                  hint: Text('2',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff424242),
                                  ),)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    16.vspace,
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
                          onPressed: (){}, 
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
                          onPressed: (){}, 
                        child: Text('Save',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Color(0xffFFFFFF)
                        ),))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff314366),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add, color: Color(0xffFFFFFF)),
            ),
          ),
        ),
      ),
    );
  }
}
