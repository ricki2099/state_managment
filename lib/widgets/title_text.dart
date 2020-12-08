import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  TitleText(this.text, {this.textAlign, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2.copyWith(
            fontSize: fontSize,
          ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  factory TitleText.balance(double amount) {
    final currencyFormat = new NumberFormat('#,##0.00', 'en_US');
    return TitleText(
      '\$${currencyFormat.format(amount)}',
      fontSize: 30,
    );
  }

  factory TitleText.subTitle(String text) {
    return TitleText(
      text,
      fontSize: 25,
    );
  }

  factory TitleText.amount(double amount) {
    final currencyFormat = new NumberFormat('#,##0.00', 'en_US');
    return TitleText(
      '\$${currencyFormat.format(amount)}',
      fontSize: 20,
    );
  }
}
