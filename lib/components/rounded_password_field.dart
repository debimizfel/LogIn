import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final Color color;
  final ValueChanged<String>? onChange;
  const RoundedPasswordField({
    Key? key,
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
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: color,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: color,
            )),
      ),
    );
  }
}
