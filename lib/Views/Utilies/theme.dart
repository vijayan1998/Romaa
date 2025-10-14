import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static var lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
       backgroundColor: Color(0xffFFFFFF)),
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      brightness: Brightness.light,
      canvasColor:const Color(0xFF314366),
      splashColor: const Color(0xff515151),
      hintColor: const Color(0xFF1F387A),
      dividerColor: const Color(0xFFF8F8F8),
      focusColor:const Color(0xffFFFFFF),
      shadowColor: const Color(0xff0D0D0D),
      hoverColor: const Color(0xff171412),
      textTheme: TextTheme(
            headlineMedium: GoogleFonts.inter(
            color:Color(0xff121417),
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
             headlineSmall: GoogleFonts.inter(
            color: Color(0xff121417),
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: GoogleFonts.inter(
            color: Color(0xff121417),
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),  
          titleMedium: GoogleFonts.inter(
            color: Color(0xff121417),
            fontSize:22,
            fontWeight:FontWeight.w600,
            ),
            titleSmall: GoogleFonts.inter(
            color: Color(0xff121417),
            fontSize:20,
            fontWeight:FontWeight.w500,
            ),
            bodyLarge: GoogleFonts.inter(
              color: Color(0xff121417),
            fontSize:18,
            fontWeight:FontWeight.w400,
            ),
             bodyMedium: GoogleFonts.inter(
              color:  Color(0xff121417),
            fontSize:16,
            fontWeight:FontWeight.w400,
            ),
             bodySmall: GoogleFonts.inter(
              color:Color(0xff121417),
            fontSize:14,
            fontWeight:FontWeight.w400,
            ),
            labelLarge: GoogleFonts.inter(
              color: Color(0xff121417),
              fontSize:20,
              fontWeight: FontWeight.w400,
            ),
          ),

    
    );
    
}