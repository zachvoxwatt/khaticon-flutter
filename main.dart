import 'package:flutter/material.dart';
import 'package:flutter_techdemo/comps/AppComponents.dart';
import 'comps/AppTitle.dart';

void main() => runApp(const FlutterTechDemo());

class FlutterTechDemo extends StatelessWidget {
  const FlutterTechDemo({Key? key}) : super(key: key);

  static const String _title = 'Flutter Tech Demo - Khaticon 2.0';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: MainAppWidget());
  }
}

class MainAppWidget extends StatelessWidget {
  const MainAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Center(child: Column(children: const [AppTitle(), DisplayArea()])));
  }
}
