import 'package:firstproject/screens/RichTextScreen.dart';
import 'package:firstproject/screens/dashboard.dart';
import 'package:firstproject/screens/flutterlayoutScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FlutterLayoutScreen());
  }
}
