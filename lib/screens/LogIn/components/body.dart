import 'package:flutter/material.dart';
import 'package:login/screens/LogIn/components/background.dart';

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
            height: size.height * 0.35,
          ),
        ],
      ),
    );
  }
}
