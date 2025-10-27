import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class Appsetting extends StatefulWidget {
  const Appsetting({super.key});

  @override
  State<Appsetting> createState() => _AppsettingState();
}

class _AppsettingState extends State<Appsetting> {
  List<DropdownMenuItem> itemlist = [
    DropdownMenuItem(value: 'Tamil', child: Text('Tamil')),
    DropdownMenuItem(value: 'English', child: Text('English')),
    DropdownMenuItem(value: 'Hindi', child: Text('Hindi')),
    DropdownMenuItem(value: 'Telgu', child: Text('Telgu')),
  ];
  String? selectedValue;
  bool isvalue = true;
  List<bool> isSwitch = [false,false,false,false];
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
                      Text('App Settings',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                          ),),
                    ],
                  ),
                ),
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
                      Text('App Preferences',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      8.vspace,
                      DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: const BorderSide(
                            color: Color(0xffDDDDDD),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffDDDDDD),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Color(0xffDDDDDD),
                            width: 2.0,
                          ),
                        ),
                      ),
                      style: Theme.of(context).textTheme.titleMedium,
                      iconEnabledColor: Color(0xff1D1D1D),
                      iconSize: 30,
                      hint: Text(
                        'Language',
                        style: Theme.of(context).textTheme.bodyMedium
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
                    16.vspace,
                    Text('Location Access',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      12.vspace,
                       Text('Location Access',style: Theme.of(context).textTheme.bodyLarge),
                       4.vspace,
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           SizedBox(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text('Enable location access for attendance and project mapping',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xff61758A)
                            ))),
                           Switch(
                      activeTrackColor: Color(0xff008000),
                      inactiveTrackColor: Color(0xffBDC1CA),
                      value: isvalue, 
                    onChanged: (value){
                      setState(() {
                        isvalue = value;
                      });
                    }),
                        ],
                       ),
                       24.vspace,
                    Text('Notifications',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      16.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Push Notifications',style: Theme.of(context).textTheme.bodyMedium),
                            Switch(
                      activeTrackColor: Color(0xff008000),
                      inactiveTrackColor: Color(0xffBDC1CA),
                      value: isSwitch[0], 
                    onChanged: (value){
                      setState(() {
                        isSwitch[0] = value;
                      });
                    }),     
                        ],
                      ),
                      8.vspace,
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Email Alerts',style: Theme.of(context).textTheme.bodyMedium),
                            Switch(
                      activeTrackColor: Color(0xff008000),
                      inactiveTrackColor: Color(0xffBDC1CA),
                      value: isSwitch[1], 
                    onChanged: (value){
                      setState(() {
                        isSwitch[1] = value;
                      });
                    }),     
                        ],
                      ),
                      8.vspace,
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Project Updates',style: Theme.of(context).textTheme.bodyMedium),
                            Switch(
                      activeTrackColor: Color(0xff008000),
                      inactiveTrackColor: Color(0xffBDC1CA),
                      value: isSwitch[2], 
                    onChanged: (value){
                      setState(() {
                        isSwitch[2] = value;
                      });
                    }),     
                        ],
                      ),
                      8.vspace,
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Notification Sounds',style: Theme.of(context).textTheme.bodyMedium),
                            Switch(
                      activeTrackColor: Color(0xff008000),
                      inactiveTrackColor: Color(0xffBDC1CA),
                      value: isSwitch[3], 
                    onChanged: (value){
                      setState(() {
                        isSwitch[3] = value;
                      });
                    }),     
                        ],
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