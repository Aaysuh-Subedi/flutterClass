import 'package:firstproject/screens/RichTextScreen.dart';
import 'package:firstproject/screens/columnScreen.dart';
import 'package:firstproject/screens/containerscreen.dart';
import 'package:firstproject/screens/dashboard.dart';
import 'package:firstproject/screens/flexible_expanded_screen.dart';
import 'package:firstproject/screens/flutterlayoutScreen.dart';
import 'package:firstproject/screens/imageviewscreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FlexibleExpandedScreen());
  }
}
