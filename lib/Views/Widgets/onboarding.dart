import 'package:flutter/material.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:romaa/Views/Widgets/custombutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingWidget extends StatelessWidget {
  final Function()? onTap;
  final PageController pageController;
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String title;
  final String subtitle;
  final Color buttonColor;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final Function()? onPressed;
  final String bannerimage;
  const OnboardingWidget({super.key, this.onTap, required this.pageController, required this.text, required this.text1, required this.text2, required this.text3, required this.title, required this.subtitle, required this.buttonColor, this.onPressed, 
  required this.image1,required this.image2,required this.image3,required this.image4, required this.bannerimage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                InkWell(
                  onTap: onTap,
                  child: Text('Skip',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Color(0xff6B7382),
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withValues(alpha: 0.25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(bannerimage,fit: BoxFit.fill,width: MediaQuery.of(context).size.width,),
                24.vspace,
                Text(title,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,),
                8.vspace,
                 Text(subtitle,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.center),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDBE0E5)
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(image1),
                          8.hspace,
                          Text(text,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        ],
                      ),
                    ),
                    Container(
                     width: MediaQuery.of(context).size.width / 2.3,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDBE0E5)
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(image2),
                          8.hspace,
                          Text(text1,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        ],
                      ),
                    ),
                  ],
                ),
                16.vspace,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width / 2.3,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDBE0E5)
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(image3),
                          8.hspace,
                          Text(text2,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDBE0E5)
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(image4),
                          8.hspace,
                          Text(text3,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),),
                        ],
                      ),
                    ),
                  ],
                ),
                48.vspace,
             Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  spacing: 16,
                  dotColor: Color(0xffDEE0E3),
                  activeDotColor: Color(0xff121417),
                ),
              ),
            ),
            48.vspace,
            Custombuttonwidget(text: 'Next', color: buttonColor, textColor: Color(0xffFFFFFF),
            onPressed: onPressed),
              ],
            ),
          ),
          24.vspace,
          
        ],
      ),
    );
  }
}