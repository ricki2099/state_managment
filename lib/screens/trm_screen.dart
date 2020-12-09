import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/widgets/title_text.dart';

class TrmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TitleText.balance(3000),
        ),
      ),
    );
  }
}
