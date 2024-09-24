import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

ThemeData buildTheme(brightness) {
  // return ThemeData(brightness: brightness, fontFamily: 'SFProText');

  final lightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
    primary: greyColor2,
    secondary: greyColor,
  );
  final darkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
    primary: whiteColor,
    secondary: whiteColor2,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    textTheme: GoogleFonts.oswaldTextTheme(),
    colorScheme: brightness == Brightness.light ? lightColorScheme : darkColorScheme,
  );
}