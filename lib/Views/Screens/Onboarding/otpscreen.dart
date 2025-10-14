import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:romaa/Views/Widgets/custombutton.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController pinputController = TextEditingController();
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 66,
      textStyle: TextStyle(fontSize: 24, color: Color(0xff121417)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          36.vspace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Appimage.logo, height: 60, width: 100),
                Text(
                  'OTP',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(thickness: 2, color: Colors.grey.withValues(alpha: 0.25)),
          24.vspace,
          Center(
            child: Text(
              'Verify Your Phone',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          16.vspace,
          Center(
            child: Text(
              'Enter the 6-digit OTP sent to your number \n+91 98765 43210.',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          24.vspace,
          Center(
            child: Pinput(
              controller: pinputController,
              focusNode: focusNode,
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.grey),
              ),
              onSubmitted: (value) {},
            ),
          ),
          16.vspace,
          Center(
            child: Text(
              'Change Number',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Color(0xff6B7082),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
           Center(
             child: Text(
                'Resend OTP in 30s',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7082),
                ),
                textAlign: TextAlign.center,
              ),
           ),
           16.vspace,
           Custombuttonwidget(text: 'Verify & Continue', 
           color: Color(0xff1F387A), 
           textColor: Color(0xffFFFFFF),
           onPressed: (){
            Get.toNamed(Appnames.navigationscreen);
           },)
        ],
      ),),
    );
  }
}
