import 'package:flutter/material.dart';

class Custombuttonwidget extends StatelessWidget {
  final  Function()? onPressed;
  final String text;
  final Color color;
  final Color textColor;
  const Custombuttonwidget({super.key, this.onPressed, required this.text, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12)
          )
        ),
        onPressed:onPressed,
      child: Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: textColor,
      ))),
    );
  }
}