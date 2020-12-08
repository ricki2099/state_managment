import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/styles/bank_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final String imagePath;

  const ActionButton({Key key, this.text, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: BankColors.secondaryBackgroundColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.button,
          )
        ],
      ),
    );
  }
}
