import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romaa/Views/Screens/Navigation/navigationscreen.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  TextEditingController message = TextEditingController();
   List<DropdownMenuItem> itemlist = [
    DropdownMenuItem(value: 'First', child: Text('First')),
    DropdownMenuItem(value: 'Second', child: Text('Second')),
  ];
  String? selectedValue;
  String? selectbilling;
  String? selectsite;
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
                        Text('Help & Support',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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
                         Text('FAQs',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        16.vspace,
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
                          'General',
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
                          'Billing',
                          style: Theme.of(context).textTheme.bodyMedium
                        ),
                        dropdownColor: Color(0xffFFFFFF),
                        items: itemlist,
                        value: selectbilling,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
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
                          'Site Management',
                          style: Theme.of(context).textTheme.bodyMedium
                        ),
                        dropdownColor: Color(0xffFFFFFF),
                        items: itemlist,
                        value: selectsite,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
                      16.vspace,
                       Text('Chat with Support',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        24.vspace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(Appimage.chat),
                            16.hspace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Support Bot',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff4F6996),
                                ),),
                                6.vspace,
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffE8EBF2),
                                  ),
                                  child: Text('Hi  there!  How  can  I  assist  you  today?',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff0D121C),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        24.vspace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('user',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xff4F6996),
                                ),),
                                6.vspace,
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffE8EBF2),
                                  ),
                                  child: Text('I\'m  having  trouble  accessing  my  \nproject  dashboard.',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xff0D121C),
                                  )),
                                ),
                              ],
                            ),
                              16.hspace,
                             Image.asset(Appimage.chat1),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
                        ),
                        TextFormField(
                    controller: message,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Type  your message...',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffDDDDDD)
                        )
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color:Color(0xffDDDDDD)
                        )
                      ), 
                      filled: true,
                      fillColor: Color(0xff88A6FF),
                      suffixIcon: IconButton(onPressed: (){}, icon: Image.asset(Appimage.img))
                    ),
                  ),
                      ],
                    ),
                  ),
                  8.vspace,
          ],
        ),
      ),
    );
  }
}