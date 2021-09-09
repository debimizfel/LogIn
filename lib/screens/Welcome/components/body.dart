import 'package:flutter/material.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/constants.dart';
import 'package:login/screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            'assets/images/login.png',
            height: size.height * 0.40,
          ),
          SizedBox(height: size.height * 0.01),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.pushNamed(context, 'logIn_screen');
            },
          ),
          RoundedButton(
            text: 'SINGUP',
            color: kPrimaryLightColor,
            textcolor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
