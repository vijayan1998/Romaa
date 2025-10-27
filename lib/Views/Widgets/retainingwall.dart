import 'package:flutter/material.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class RetainingWall extends StatelessWidget {
  final String title;
  final String status;
  final Color statucolor;
  const RetainingWall({
    super.key, required this.title, required this.status, required this.statucolor,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Color(0xffDDDDDD),
      ),
      borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Text(title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                 fontWeight: FontWeight.w500,
               ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                4.vspace,
                Text('Quantity ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               8.vspace,
                Text('Unit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               8.vspace,
                Text('Start Date',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
                8.vspace,
                Text('Days Remaining',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
               8.vspace,
                Text('Status',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Color(0xff61758A),
               ),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                4.vspace,
                Text('195.00',style: Theme.of(context).textTheme.bodyMedium),
                8.vspace,
                Text('Month',style: Theme.of(context).textTheme.bodyMedium),
                8.vspace,
                Text('01.04.2025',style: Theme.of(context).textTheme.bodyMedium),
                8.vspace,
                Text('26',style: Theme.of(context).textTheme.bodyMedium),
                8.vspace,
                Text(status,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: statucolor,
                  fontWeight: FontWeight.w600,
                )),
              ],
            ),
          ],
        ),
      ],
    ),
  );
  }
}