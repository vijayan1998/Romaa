// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:romaa/Views/Screens/Navigation/Projects/projects.dart';
import 'package:romaa/Views/Screens/Navigation/calenderscreen.dart';
import 'package:romaa/Views/Screens/Navigation/homescreen.dart';
import 'package:romaa/Views/Screens/Navigation/profilescreen.dart';
import 'package:romaa/Views/Screens/Navigation/requestscreen.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
class NavigationScreen extends StatefulWidget {
  int index;
   NavigationScreen({super.key, required this.index});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.index == 0 ? HomeScreen() : widget.index == 1 ? ProjectScreen()
        : widget.index == 2 ? RequestScreen() : widget.index == 3 ? CalenderScreen()
        : widget.index == 4 ? ProfileScreen(): HomeScreen()
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 8,right: 8,bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  widget.index = 0;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 16.vspace,
                  Image.asset(Appimage.home,height: 28,width: 28,color: widget.index == 0 ?Color(0xff121417) : null),
                  6.vspace,
                  Text('Home',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:widget.index == 0 ? Color(0xff121417) : Color(0xff61758A),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
            ),
             InkWell(
              onTap: (){
                setState(() {
                  widget.index = 1;
                });
              },
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 16.vspace,
                  Image.asset(Appimage.project,height: 28,width: 28,color: widget.index == 1 ?Color(0xff121417) : null,),
                  6.vspace,
                  Text('Projects',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: widget.index == 1 ? Color(0xff121417): Color(0xff61758A),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
                           ),
             ),
             InkWell(
              onTap: (){
                setState(() {
                  widget.index = 2;
                });
              },
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 16.vspace,
                  Image.asset(Appimage.request,height: 28,width: 28,color: widget.index == 2 ?Color(0xff121417) : null,),
                  6.vspace,
                  Text('Request',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: widget.index == 2 ?Color(0xff121417) : Color(0xff61758A),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
                           ),
             ),
             InkWell(
              onTap: (){
                setState(() {
                  widget.index = 3;
                });
              },
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 16.vspace,
                  Image.asset(Appimage.calender,height: 28,width: 28,color: widget.index == 3 ?Color(0xff121417) : null,),
                  6.vspace,
                  Text('Calendar',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: widget.index == 3 ?Color(0xff121417) : Color(0xff61758A),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
                           ),
             ),
             InkWell(
              onTap: (){
                setState(() {
                  widget.index = 4;
                });
              },
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 16.vspace, 
                  Image.asset(Appimage.profile,height: 28,width: 28,color: widget.index == 4 ?Color(0xff121417) : null,),
                  6.vspace,
                  Text('Profile',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: widget.index == 4 ?Color(0xff121417) : Color(0xff61758A),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
             ),
          ],
        ),
      ),
    );
  }
}