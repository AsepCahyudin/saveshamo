import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/Splash_Image.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
