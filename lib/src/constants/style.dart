import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/src/constants/colors.dart';

customTexstyle({
  FontWeight? fontWeight,
  double? fontSize,
  Color? color,
}) {
  return GoogleFonts.poppins(
    fontWeight: fontWeight ?? FontWeight.normal,
    fontSize: fontSize ?? 14,
    color: color ?? AppColors.white,
  );

}