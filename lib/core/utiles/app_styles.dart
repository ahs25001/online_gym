import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle titleStyle = GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24.sp);
  static TextStyle subTitleStyle = GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15.sp);
  static TextStyle selectedSubTitleStyle = GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15.sp);
  static TextStyle descriptionStyle = GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16.sp);
  static TextStyle fieldTitle = GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.sp);
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
  );
}
