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
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 400,

                  decoration: BoxDecoration(
                    // color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.black, width: 4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 400,

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
