import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';

class CheckBoxClass extends StatefulWidget {
  const CheckBoxClass({super.key});

  @override
  State<CheckBoxClass> createState() => _CheckBoxClassState();
}

class _CheckBoxClassState extends State<CheckBoxClass> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black26;
    }

    return Checkbox(
      side: BorderSide(color: AppColors.black),    
      checkColor: AppColors.black,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
