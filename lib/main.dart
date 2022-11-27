import 'package:flutter/material.dart';
import 'package:saveshamo/pages/home/main_page.dart';
import 'package:saveshamo/pages/sign_in_page.dart';
import 'package:saveshamo/pages/sign_up_page.dart';
import 'package:saveshamo/pages/splash_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
