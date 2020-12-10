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
    final screenHeigth = MediaQuery.of(context).size.height;
    final padding = screenWidth > 700 ? 100.0 : 12.0;
    final horizontalButtons = Row(
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
    );
    final verticalButtons = Column(
      children: [
        ActionButton(
          text: 'Send Money',
          imagePath: BankAssets.money,
        ),
        SizedBox(
          height: 12,
        ),
        ActionButton(
          text: 'Calculation',
          imagePath: BankAssets.calculation,
        ),
      ],
    );
    final var1 = 0;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              TitleText.amount(3416),
              TitleText.balance(6390),
              TitleText.subTitle('Transactions'),
              TitleText.subTitle(
                  '123456789012345678901234567890123456789012345678901234567891234567890'),
              screenWidth > 700 ? horizontalButtons : verticalButtons,
              if (screenWidth > 700) horizontalButtons else verticalButtons,
              var1 == 0
                  ? Container()
                  : var1 == 1
                      ? SizedBox()
                      : var1 == 2
                          ? RaisedButton()
                          : Text(''),
              if (var1 == 0)
                Container()
              else if (var1 == 1)
                SizedBox()
              else if (var1 == 2)
                Container()
              else
                Text(''),
              Builder(
                builder: (context) {
                  switch (var1) {
                    case 0:
                      return Container();
                    case 1:
                      return SizedBox();
                    case 2:
                      return RaisedButton();
                    default:
                      return Text('');
                  }
                },
              ),
              selectorFunction(var1),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constrains) {
                    if (screenWidth > 1300) {
                      return TitleText.subTitle('THIS SCREEN IS NOT SUPPORTED');
                    }

                    return Row(
                      children: [
                        Image.network(
                          'https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg',
                          width: constrains.maxWidth * 0.3,
                        ),
                        Flexible(
                          flex: 5,
                          fit: FlexFit.tight,
                          child: ColoredBox(
                              color: Colors.green,
                              child: TitleText.amount(screenWidth)),
                        ),
                        Flexible(
                          flex: 5,
                          fit: FlexFit.tight,
                          child: ColoredBox(
                              color: Colors.green,
                              child: TitleText.amount(constrains.maxHeight)),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: ListView(
                  shrinkWrap: true,
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
                  ],
                ),
              ),
              TitleText.subTitle('this is the end')
            ],
          ),
        ),
      ),
    );
  }

  Widget selectorFunction(int var1) {
    switch (var1) {
      case 0:
        return Container();
      case 1:
        return SizedBox();
      case 2:
        return RaisedButton();
      default:
        return Text('');
    }
  }
}
