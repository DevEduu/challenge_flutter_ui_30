import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NText extends StatelessWidget {
  String text;
  FontWeight? fontWeight;
  Color? color;
  double? fontSize;

  NText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.color,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontWeight: fontWeight,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 12,
      ),

    );
  }
}
