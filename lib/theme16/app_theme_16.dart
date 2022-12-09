import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary16 = Colors.lightBlue;

  static final ThemeData lightTheme16 = ThemeData.light().copyWith(

    primaryColor: primary16,

    appBarTheme: const AppBarTheme(
      color: primary16,
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: primary16,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary16,
        shape: const StadiumBorder(),
        elevation: 5
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary16,
      elevation: 5
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary16),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary16),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary16),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      border: OutlineInputBorder(
        borderSide: BorderSide(color: primary16),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    )

    

  );
}