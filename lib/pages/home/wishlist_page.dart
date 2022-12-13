import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
