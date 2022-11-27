import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/Cart_Icon.png',
          width: 20,
        ),
      );
    }

    Widget customBottomnNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Home.png',
                    width: 21,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Chat_Icon.png',
                    width: 21,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Favorite_Icon.png',
                    width: 20,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Profile.png',
                    width: 18,
                  ),
                  label: '',
                ),
              ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomnNav(),
      body: Center(child: Text('Main Page')),
    );
  }
}
