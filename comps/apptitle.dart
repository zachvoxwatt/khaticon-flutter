import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  final _showStr = 'Khaticon 2.0';

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 52),
        child: const Text('Khaticon 2.0',
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline)));
  }

  String getAppTitle() {
    return _showStr;
  }
}
