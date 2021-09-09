import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/screens/LogIn/logIn-screen.dart';
import 'package:login/screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: 'logIn_screen',
      routes: {
        "welcome_screen": (context) => const WelcomeScreen(),
        "logIn_screen": (context) => const LogIn(),
      },
    );
  }
}
