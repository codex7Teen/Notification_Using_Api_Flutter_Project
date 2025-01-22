import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  //! LOCATION TEXT
  static TextStyle locationText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900, fontSize: 14.5, color: Colors.black);

  //! SEARCHBAR TEXT
  static TextStyle searchBarText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w800, color: Colors.grey, fontSize: 15);

  //! APP MAIN SUB TITLES
  static TextStyle appMainSubtitles = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black);
}
