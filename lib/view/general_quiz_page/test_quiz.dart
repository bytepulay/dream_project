import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GroupButton(
            isRadio: false,
            spacing: 10,
            onSelected: (index, isSelected) => print('$index button is selected'),
            buttons: ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40"],
          )
        ],
      ),
    );
  }
}
