import 'package:flutter/material.dart';

class Palindrome extends StatelessWidget {
  const Palindrome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.lime,
        titleSpacing: 100,
      ),
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          children: [
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter your number:"),
                hintText: ("eg...55"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sumbit", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
