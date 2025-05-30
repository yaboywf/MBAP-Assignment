import 'package:flutter/material.dart';

import 'pages/forget_password1.dart';
import 'pages/forget_password2.dart';
import 'pages/forget_password3.dart';
import 'pages/login.dart';
import 'pages/register1.dart';
import 'pages/register2.dart';
import 'pages/register3.dart';
import 'pages/register4.dart';
import 'pages/register5.dart';

import 'pages/buyer_home.dart';
import 'pages/product_listings.dart';
import 'pages/profile.dart';
import 'pages/buyer_product.dart';

import 'pages/shop_home.dart';
import 'pages/shop_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Refresh Deals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => SignupPage(),
        '/register2': (context) => SignupPage2(),
        '/register3': (context) => SignupPage3(),
        '/register4': (context) => SignupPage4(),
        '/register5': (context) => SignupPage5(),
        '/forget_password1': (context) => ForgetPasswordPage1(),
        '/forget_password2': (context) => ForgetPasswordPage2(),
        '/forget_password3': (context) => ForgetPasswordPage3(),
        '/buyer_product': (context) => BuyerProductPage(),
        '/buyer_home': (context) => BuyerHomepage(),
        '/product_listings': (context) => ProductListingPage(),
        '/profile': (context) => ProfilePage(),
        '/shop_home': (context) => ShopHomePage(),
        '/shop_editor': (context) => ShopEditorPage(),
      },
    );
  }
}
