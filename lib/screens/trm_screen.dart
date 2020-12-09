import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/data/services/dollar_service.dart';
import 'package:state_managment/widgets/title_text.dart';

class TrmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stream = DollarService().getRealTimeTrm();

    var buttonColor = Colors.green;
    print('se Construyó el Screen');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TitleText.subTitle('Dolar hoy:'),
              FutureBuilder<double>(
                initialData: 0,
                future: stream
                    .skip(5)
                    .timeout(
                      Duration(seconds: 10),
                    )
                    .last
                    .timeout(
                        Duration(
                          seconds: 20,
                        ),
                        onTimeout: () => null),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null) {
                      return Text('No hay conexión con el servidor');
                    }
                    return TitleText.balance(snapshot.data);
                  }

                  return SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              StatefulBuilder(
                builder: (context, setColorState) {
                  print('se Construyó el Botón');

                  return RaisedButton(
                    onPressed: () {
                      Color newColor;
                      if (buttonColor == Colors.green) {
                        buttonColor = Colors.red;
                      } else {
                        buttonColor = Colors.green;
                      }
                      setColorState(() {});
                    },
                    color: buttonColor,
                    child: TitleText.subTitle('ChangeColor'),
                  );
                },
              ),
              StatefulBuilder(
                builder: (context, setState) {
                  print('se Construyó el Botón');

                  return RaisedButton(
                    onPressed: () {
                      Color newColor;
                      if (buttonColor == Colors.green) {
                        buttonColor = Colors.red;
                      } else {
                        buttonColor = Colors.green;
                      }
                      setState(() {});
                    },
                    color: buttonColor,
                    child: TitleText.subTitle('ChangeColor'),
                  );
                },
              ),
              /*    StreamBuilder<double>(
                initialData: 0,
                stream: DollarService().getRealTimeTrm(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return TitleText.balance(snapshot.data);
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null) {
                      return Text('No hay conexión con el servidor');
                    }
                    return TitleText.balance(snapshot.data);
                  }

                  return SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  );
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
