import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/first_screen.dart';
import 'package:state_managment/model_state.dart';
import 'package:state_managment/model_state_cubit.dart';
import 'package:state_managment/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final modelState1 = ModelState();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push<void>(MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider.value(
                  value: modelState1,
                  child: Scaffold(
                    appBar: AppBar(),
                    body: FirstScreen(
                      screenName: 'CHARLIE',
                    ),
                  ),
                ))),
      ),
      body: Column(
        children: [
          BlocProvider(
            create: (_) => ModelStateCubit(),
            child: SecondScreen(
              screenName: 'ALFA',
            ),
          ),
          Container(
            height: 3,
            color: Colors.black,
          ),
          ChangeNotifierProvider.value(
            value: modelState1,
            child: FirstScreen(
              screenName: 'CHARLIE',
            ),
          ),
          Container(
            height: 3,
            color: Colors.black,
          ),
          ChangeNotifierProvider(
            create: (_) => ModelState(),
            child: FirstScreen(
              screenName: 'BRAVO',
            ),
          ),
          Container(
            height: 3,
            color: Colors.black,
          ),
          ChangeNotifierProvider.value(
            value: modelState1,
            child: FirstScreen(
              screenName: 'DELTA',
            ),
          ),
          Container(
            height: 3,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
