import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontCustom {

   static TextStyle customStyleFonts({size, weigth, spacing, color, baseline}) {
     return GoogleFonts.questrial(
         fontSize: size.toDouble(),
         fontWeight: weigth,
         letterSpacing: spacing,
         color: color,
         textBaseline: baseline ??= TextBaseline.alphabetic
     );
  }
}