import 'package:flutter/material.dart';


class MyTextStyle extends StatelessWidget {
  const MyTextStyle(var message ,{super.key}) : outputText = message;
  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(color: Colors.redAccent, fontSize: 28, fontWeight: FontWeight.w600),
    );
  }
}

