import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saveshamo/pages/cart_page.dart';
import 'package:saveshamo/pages/checkout_page.dart';
import 'package:saveshamo/pages/checkout_success_page.dart';
import 'package:saveshamo/pages/detail_chat_page.dart';
import 'package:saveshamo/pages/edit_profile_page.dart';
import 'package:saveshamo/pages/home/main_page.dart';
import 'package:saveshamo/pages/product_page.dart';
import 'package:saveshamo/pages/sign_in_page.dart';
import 'package:saveshamo/pages/sign_up_page.dart';
import 'package:saveshamo/pages/splash_page.dart';
import 'package:saveshamo/providers/auth_provider.dart';
import 'package:saveshamo/providers/product_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
