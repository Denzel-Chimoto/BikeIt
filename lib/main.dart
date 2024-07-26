import 'package:flutter/material.dart';
import 'SignInPage.dart';
import 'LoginPage.dart';
import 'ForgotPasswordScreen.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/':(context) => Loginpage(),
        '/2':(context) => ForgotPasswordPage(),
        '/3':(context) => Signinpage(),
        '/4':(context) => BikeItHome(),

      },
      initialRoute: '/',
    );
  }
}
