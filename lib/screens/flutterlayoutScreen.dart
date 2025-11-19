import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Screen"),
        backgroundColor: Colors.amber,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 300,

              decoration: BoxDecoration(
                // color: Colors.lightBlueAccent,
                border: Border.all(color: Colors.black, width: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
