import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme.light(
          primary: creamColor,
          secondary: darkblueColor,
          tertiary: lightColor,
          error: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.black,
      colorScheme: ColorScheme.dark(
          primary: darkCreamColor,
          secondary: Colors.white,
          tertiary: lightColor,
          error: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  //colors
  static Color creamColor = Color.fromARGB(255, 237, 238, 236);
  static Color darkCreamColor = Vx.gray900;
  static Color darkblueColor = Color(0xff403b58);
  static Color lightColor = Vx.indigo500;
}
