import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
        ),
      );
    }

    return Scaffold(
      appBar: header(),
    );
  }
}
