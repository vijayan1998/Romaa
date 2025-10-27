import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextEditingController fullname = TextEditingController();
  TextEditingController role = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController dept = TextEditingController();
  TextEditingController location = TextEditingController();
   DateTime selectedDate = DateTime.now();

   XFile? image;

  Future<void> pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final imageFile = File(pickedImage.path);

      // Get the file size in bytes
      int imageSize = await imageFile.length();

      // Convert bytes to MB
      double imageSizeInMB = imageSize / (1024 * 1024);

      // Check if the image size exceeds 3MB
      if (imageSizeInMB > 5) {
        // Show an error message (using SnackBar in this case)
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Image size exceeds 5MB. Please choose a smaller file.'),
          ),
        );
      } else {
        // If the image size is acceptable, update the state
        setState(() {
          image = pickedImage;
        });
      }
    }
  }
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
                       IconButton(
                    onPressed: () {
                      Get.to(NavigationScreen(index: 4));
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                      16.hspace,
                      Text('Profile',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                          ),),
                          Spacer(),
                    TextButton(onPressed: (){}, child: Text('Save',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Color(0xff314366),
                      fontWeight: FontWeight.bold,
                    ),)),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey.withValues(alpha: 0.25),
                ),
              16.vspace,
               Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children:[ 
                   image != null ?  Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: FileImage(
                                        File(image!.path),
                                      ),
                                      fit: BoxFit.cover)),
                            ): Image.asset(Appimage.userimg),
                    Positioned(
                      right: -5,
                      top: 6,
                      child: InkWell(
                        onTap: pickImage,
                        child: Image.asset(Appimage.profileedit)))
            ]),
              ),
              16.vspace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Text('FullName',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: fullname,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  16.vspace,
                   Text('Role',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: role,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your role',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  24.vspace,
                   Text('Contact Information',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                   )),
                   8.vspace,
                     Text('PhoneNumber',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: phone,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your phonenumber',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  16.vspace,
                    Text('Email',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: email,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  24.vspace,
                   Text('Work Details',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                   )),
                   8.vspace,
                     Text('Department',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: dept,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your dept',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  16.vspace,
                   Text('Join Date',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: dob,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter Join Date',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                       suffixIcon: IconButton(onPressed: ()async { 
                         final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1960),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dob.text = DateFormat.yMd().format(selectedDate);
      });
    }
                      },icon: Icon(Icons.calendar_month,color: Colors.grey.shade800,)), 
                    ),
                  ),
                  16.vspace,
                   Text('Base Location',style: Theme.of(context).textTheme.bodyLarge),
              8.vspace,
              TextFormField(
                    controller: location,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Enter your location',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                    ),
                  ),
                  16.vspace,
                  ],
                ),
              ),
             
          ],
        ),
      ),
    );
  }
}