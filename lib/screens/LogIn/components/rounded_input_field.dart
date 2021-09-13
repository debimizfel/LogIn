import 'package:flutter/material.dart';
import 'package:login/screens/LogIn/components/text_field_container.dart';

import '../../../constants.dart';

class RoundedInputField extends StatelessWidget {
  final Color color;
  final String hinText;
  final IconData? icon;
  final ValueChanged<String>? onChange;
  const RoundedInputField({
    Key? key,
    required this.hinText,
    this.icon = Icons.person,
    this.onChange,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hinText,
          icon: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
