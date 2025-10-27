import 'package:flutter/material.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ScheduleWeeklyWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isVisible;
  const ScheduleWeeklyWidget({super.key, required this.title,  this.onPressed, required this.isVisible});

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
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                children: [
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
                  4.vspace,
                  Text('02',style: Theme.of(context).textTheme.bodyMedium),
                  4.vspace,
                ],
              )
            ],
          ) : SizedBox()
        ],
      ),
    );
  }
}
