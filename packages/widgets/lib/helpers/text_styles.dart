import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets/export.dart';

class TextStyles {
  TextStyle home = GoogleFonts.roboto(
    color: Styles.lightPrimaryColor,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
    fontSize: rsp.getFontSize(30),
  );
}
