import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/screens/Singup/components/background.dart';
import '../../../constants.dart';
import '../../already_have_an_account.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'SINGUP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/images/login3.png',
              height: size.height * 0.30,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              color: kPrimaryColorOrange,
              hinText: 'Your Email',
              onChange: (value) {},
            ),
            RoundedPasswordField(
              color: kPrimaryColorOrange,
              onChange: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
              color: kPrimaryColorOrange,
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccount(
              login: false,
              press: () => Navigator.pushNamed(context, 'login_screen'),
            )
          ],
        ),
      ),
    );
  }
}
