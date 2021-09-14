import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/screens/LogIn/logIn-screen.dart';
import 'package:login/screens/Singup/singup_screen.dart';
import 'package:login/screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: 'welcome_screen',
      routes: {
        "welcome_screen": (context) => const WelcomeScreen(),
        "login_screen": (context) => const LoginScreen(),
        "singup_screen": (context) => const SingUpScreen(),
      },
    );
  }
}
