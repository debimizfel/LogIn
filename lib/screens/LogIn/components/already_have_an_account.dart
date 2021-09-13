import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccount({
    Key? key,
    this.login = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t have an account?' : 'Already Have an Account',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sing Up' : 'Sing In',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
