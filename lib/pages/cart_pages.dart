import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar();
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
    );
  }
}
