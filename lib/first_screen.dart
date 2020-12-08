import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/model_state.dart';
import 'package:state_managment/widgets/title_text.dart';

class FirstScreen extends StatelessWidget {
  final String screenName;

  const FirstScreen({Key key, @required this.screenName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final modelState = Provider.of<ModelState>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...modelState.items
            .map(
              (name) => InkWell(
                onTap: () => modelState.addSelected(name),
                child: Container(
                  color:
                      modelState.itemsSelected.any((element) => element == name)
                          ? Colors.green
                          : Colors.orange,
                  child: TitleText(name),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
