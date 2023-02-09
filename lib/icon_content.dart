import 'package:flutter/material.dart';

class iconcontent extends StatelessWidget {
  final IconData icon;
  final String text;
  iconcontent(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
