import 'package:flutter/material.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ScheduleMonthlyWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isVisible;
  const ScheduleMonthlyWidget({super.key, required this.title,  this.onPressed, required this.isVisible});

  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2.0,
          color: Color(0xffDDDDDD),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                 fontWeight: FontWeight.w500,
               ),),
               IconButton(onPressed: onPressed, icon: Icon(isVisible ? Icons.keyboard_arrow_up :Icons.keyboard_arrow_down),),
            ],
          ),
          isVisible ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Quantity ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               4.vspace,
                Text('Unit ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               4.vspace, 
               Text('Man Power ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                8.vspace, 
               Text('Week #1 ',style: Theme.of(context).textTheme.bodyMedium),
               8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('01  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Mon -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('02  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Tue -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('03  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Wed -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('04  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Thu -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('05  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Fri -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('06  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Sat -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
               8.vspace,
                8.vspace, 
               Text('Week #2 ',style: Theme.of(context).textTheme.bodyMedium),
               8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('08  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Mon -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('09  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Tue -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('10  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Wed -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('11  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Thu -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('12  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Fri -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('13  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Sat -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
               8.vspace,
                8.vspace, 
               Text('Week #3 ',style: Theme.of(context).textTheme.bodyMedium),
               8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('15  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Mon -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('16  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Tue -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('17  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Wed -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('18  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Thu -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('19  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Fri -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('20  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Sat -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
               8.vspace,
                8.vspace, 
               Text('Week #4 ',style: Theme.of(context).textTheme.bodyMedium),
               8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('22  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Mon -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('23  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Tue -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('24  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Wed -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('25  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Thu -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Fri -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                8.vspace,
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('27  ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                   Text('Sat -- ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               16.hspace,
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Planned ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                 Text('Achieved',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                ],
               ),
               
                ],
               ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('195.00',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('Month',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('26',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                   8.vspace,
                  Text('',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                   8.vspace,
                  Text('',style: Theme.of(context).textTheme.bodyMedium),
                  8.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                ],
              )
            ],
          ) : SizedBox()
        ],
      ),
    );
  }
}
