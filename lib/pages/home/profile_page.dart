import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar();
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
