import 'package:flutter/material.dart';

class Armstrong extends StatelessWidget {
  const Armstrong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Armstrong", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.amber,
        titleSpacing: 100,
      ),
    );
  }
}
