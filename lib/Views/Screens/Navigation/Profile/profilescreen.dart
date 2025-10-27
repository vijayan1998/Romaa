import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      Image.asset(Appimage.menu),
                      16.hspace,
                      Text('Profile',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                          ),),
                          Spacer(),
                    IconButton(onPressed: (){
                      Get.toNamed(Appnames.profileedit);
                    }, icon: Image.asset(Appimage.edit))
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey.withValues(alpha: 0.25),
                ),
              16.vspace,
              Center(
                child: Image.asset(Appimage.userimg),
              ),
              8.vspace,
               Center(
                child: Text('Arun kumar',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Center(
                child:Text('Site Engineer',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                ),),
              ),
              16.vspace,
              Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Contact Information',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.call),
                    title: Text('Phone',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('+91 9876543210',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.email),
                    title: Text('Email',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('arun.kumar@example.com',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ),
                  16.vspace,
                  Text('Work Details',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.department),
                    title: Text('Department',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('Civil Engineering',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.join),
                    title: Text('Join Date',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('15th Jan 2022',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.location),
                    title: Text('Base Location',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('Chennai',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A),
                    ),),
                  ),
                   16.vspace,
                  Text('Quick Actions',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.myrequest),
                    title: Text('My Requests',style: Theme.of(context).textTheme.bodyLarge),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.myprojects),
                    title: Text('My Projects',style: Theme.of(context).textTheme.bodyLarge),
                  ),
                   InkWell(
                    onTap: (){
                      Get.toNamed(Appnames.changepassword);
                    },
                     child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.asset(Appimage.changepassword),
                      title: Text('Change Password',style: Theme.of(context).textTheme.bodyLarge),
                                       ),
                   ),
                   InkWell(
                    onTap: (){
                      Get.toNamed(Appnames.appsettings);
                    },
                     child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.asset(Appimage.settings),
                      title: Text('App Settings',style: Theme.of(context).textTheme.bodyLarge),
                                       ),
                   ),
                   InkWell(
                    onTap: (){
                      Get.toNamed(Appnames.helpsupport);
                    },
                     child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.asset(Appimage.support),
                      title: Text('Help & Support',style: Theme.of(context).textTheme.bodyLarge),
                                       ),
                   ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.logout),
                    title: Text('Log Out',style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}