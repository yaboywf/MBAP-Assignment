import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/header.dart';

class SignupPage4 extends StatefulWidget {
  const SignupPage4({super.key});

  @override
  State<SignupPage4> createState() => _SignupPage4State();
}

class _SignupPage4State extends State<SignupPage4> {
  @override
  void initState() {
    super.initState();

    // Navigate after 3 seconds
    Future.delayed(Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/register5');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        padding: 20.0,
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/payment.png'),
                  SizedBox(height: 40),
                  Text(
                    "Please pay using the QR Code above to use ReFresh Deals",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
