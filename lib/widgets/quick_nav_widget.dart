import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// A widget that displays a list of quick navigation choices.
/// Shown in the buyers' home page.
/// 
/// The [Choices] widget displays a list of quick navigation choices,
/// including an icon, color, and text.
class Choices extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const Choices({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: TextButton(
        onPressed: () => Navigator.pushReplacementNamed(context, '/product_listings'),
        child: Column(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Center(
                child: FaIcon(
                  icon,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Align(
              alignment: Alignment.center,
              child: Text(text, style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}
