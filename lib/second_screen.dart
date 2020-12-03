import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/model_state.dart';
import 'package:state_managment/model_state_cubit.dart';

class SecondScreen extends StatelessWidget {
  final String screenName;

  const SecondScreen({Key key, @required this.screenName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ModelStateCubit>();
    final state = cubit.state;
    print(screenName);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: cubit.itemsProvider
          .map((name) => InkWell(
                onTap: () => cubit.addSelected(name),
                child: Container(
                  color: state.itemsSelected.any((element) => element == name)
                      ? Colors.green
                      : Colors.orange,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
