import 'package:flutter/material.dart';
import 'package:state_managment/styles/bank_colors.dart';

class DarkTheme {
  ThemeData get themeData => ThemeData(
        primaryColor: BankColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            decorationStyle: TextDecorationStyle.dashed,
            color: Colors.green,
          ),
          headline2: TextStyle(
              fontSize: 50,
              color: BankColors.titleTextColor,
              fontWeight: FontWeight.bold),
          button: TextStyle(
              fontSize: 18,
              color: BankColors.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        buttonColor: Colors.pink,
      );

  static void example({
    int a,
    int b,
    int c,
    int d,
    int e,
    int f,
    int g,
  }) {
    print('example');
  }

  void exmaple2() {
    example(
      a: 1,
      b: 2,
      c: 3,
      d: 4,
    );
  }
}
