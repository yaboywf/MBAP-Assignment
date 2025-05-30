import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/background.dart';
import '../widgets/header.dart';

class SignupPage5 extends StatefulWidget {
  const SignupPage5({super.key});

  @override
  State<SignupPage5> createState() => _SignupPage4State();
}

class _SignupPage4State extends State<SignupPage5> {
  @override
  void initState() {
    super.initState();

    // Navigate after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/login');
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
                  FaIcon(FontAwesomeIcons.check, color: Colors.black, size: 80),
                  SizedBox(height: 10),
                  Text(
                    "Account Created",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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