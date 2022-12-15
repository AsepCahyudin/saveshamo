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

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Love_Icon.png',
                width: 74,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        emptyWishlist(),
      ],
    );
  }
}
