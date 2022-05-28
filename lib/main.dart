import 'package:flutter/material.dart';
import 'package:messaging_app/screens/welcome/welcome_screen.dart';
import 'package:messaging_app/screens/signinOrSignUp/signin_or_signup_screen.dart';
import 'package:messaging_app/theme.dart';
import 'package:messaging_app/profile/profil.dart';
import 'package:messaging_app/screens/main_page.dart';

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
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: MainPage(),
    );
  }
}
