import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rich text"), backgroundColor: Colors.blue),

      body: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            Container(
              width: 300..isInfinite,
              height: 50,
              color: Colors.amber,
              child: Text(
                "Hello world",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 300..isFinite,
              height: 50,
              color: Colors.amber,
              child: Text(
                "My Name is Aayush",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 300..isFinite,
              height: 50,
              color: Colors.brown,
              child: RichText(
                text: const TextSpan(
                  text: 'H',
                  style: TextStyle(color: Colors.red, fontSize: 40),
                  children: <TextSpan>[
                    TextSpan(
                      text: "ello",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,

                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " bold",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),

                    TextSpan(
                      text: " world",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
