import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  bool isPassword = false;
  bool isVisible = false;
  @override
  void initState(){
    super.initState();
    isPassword= false;
    isVisible = false;
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
                      Text('Change Password',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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
                       Text('New Password',style: Theme.of(context).textTheme.bodyLarge), 
                       8.vspace,
                       TextFormField(
                    controller: password,
                    style: Theme.of(context).textTheme.bodyMedium,
                    obscureText: !isPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
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
                       suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      child: Icon(isPassword
                          ? Icons.visibility
                          : Icons.visibility_off)), 
                    ),
                  ),
                  16.vspace,
                    Text('Change Password',style: Theme.of(context).textTheme.bodyLarge), 
                       8.vspace,
                       TextFormField(
                    controller: confirm,
                    style: Theme.of(context).textTheme.bodyMedium,
                    obscureText: !isPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter confirm password',
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
                       suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      child: Icon(isPassword
                          ? Icons.visibility
                          : Icons.visibility_off)), 
                    ),
                  ),
                  16.vspace,
                    Text('Strong',style: Theme.of(context).textTheme.bodyLarge), 
                    12.vspace,
                     LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width / 1.1,
                            lineHeight: 12.0,
                            percent: 0.7,
                            barRadius: Radius.circular(6),
                            backgroundColor: Color(0xffDBE0E5),
                            progressColor: Color(0xff314366),
                          ),
                    
                    ],
                  ),
                ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffF0F2F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
            ),
            onPressed: (){
              Get.to(NavigationScreen(index: 4));
            }, 
          child: Text('Cancel',style: Theme.of(context).textTheme.titleSmall)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff314366),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
            ),
            onPressed: (){}, 
          child: Text('Save Password',style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Color(0xffFFFFFF)
          ))),
        ],
      ),),
    );
  }
}