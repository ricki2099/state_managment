import 'package:flutter/material.dart';
import 'package:state_managment/styles/bank_assets.dart';
import 'package:state_managment/widgets/buttons/action-button.dart';
import 'package:state_managment/widgets/title_text.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cuadro = Container(
      margin: EdgeInsets.all(3),
      width: 70,
      height: 30,
      color: Colors.red,
    );
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              TitleText.amount(3416),
              TitleText.balance(6390),
              TitleText.subTitle('Transactions'),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ActionButton(
                      text: 'Send Money',
                      imagePath: BankAssets.money,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth < 700 ? 5 : screenWidth * 0.3,
                  ),
                  Flexible(
                    flex: 1,
                    child: ActionButton(
                      text: 'Calculation',
                      imagePath: BankAssets.calculation,
                    ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                  cuadro,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
