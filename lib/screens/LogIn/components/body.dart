import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/screens/LogIn/components/already_have_an_account.dart';
import 'package:login/screens/LogIn/components/background.dart';
import 'package:login/screens/LogIn/components/rounded_input_field.dart';
import 'package:login/screens/LogIn/components/rounded_password_field.dart';
// import 'package:login/screens/LogIn/components/text_field_container.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            'assets/images/login2.png',
            height: size.height * 0.30,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            color: kPrimaryColorPinck,
            hinText: 'Your Email',
            onChange: (value) {},
          ),
          RoundedPasswordField(
            color: kPrimaryColorPinck,
            onChange: (value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
            color: kPrimaryColorPinck,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccount(
            press: () => Navigator.pushNamed(context, 'singup_screen'),
          )
        ],
      ),
    );
  }
}
