import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:romaa/Views/Utilies/appname.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:romaa/Views/Widgets/custombutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          36.vspace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Image.asset(Appimage.logo,height: 60,width: 100,),
                  Text('Login',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withValues(alpha: 0.25),
          ),
          8.vspace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Appimage.login,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                24.vspace,
                Center(
                  child: Text('Welcome Back!',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Color(0xff314366),
                    fontWeight: FontWeight.bold
                  ),),
                ),
                16.vspace,
                Center(
                  child: Text('Login to manage your projects smarter.',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ),
                24.vspace,
                IntlPhoneField(
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Color(0xff121417),
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
              controller: phone,
              dropdownTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Color(0xff121417),
              ),
              dropdownIcon: Icon(
                Icons.arrow_drop_down,
                color: Color(0xff121417),
              ),
              dropdownIconPosition: IconPosition.trailing,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                border: OutlineInputBorder(
                  gapPadding: 2.0,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Color(0xff664533)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Color(0xff664533), width: 1.0),
                ),
                hintText: 'Enter  10 digit phone number',
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Color(0xff121417),
                ),
                errorStyle: TextStyle(
                  color: Color(0xff121417),
                  fontWeight: FontWeight.bold,
                ),
                counterStyle: TextStyle(
                  color: Color(0xff121417),
                  fontSize: 12,
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
              validator: (value) {
                if (value == null) {
                  return 'Please enter a phone number';
                } else if (!value.isValidNumber()) {
                  return 'Please enter a valid phone number';
                } else {
                  return null;
                }
              },
            ),
            88.vspace,
            Custombuttonwidget(text: 'Send OTP', 
            color: Color(0xff1F387A), 
            textColor: Color(0xffFFFFFF),
            onPressed: (){
              Get.toNamed(Appnames.otp);
            },),
            16.vspace,
            Center(
              child: Text('By continuing, you agree to Romaa\'s \nTerms & Privacy.',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                  ),
            )
              ],
            ),
          ),
          
        ],
       ),
     ),
    );
  }
}