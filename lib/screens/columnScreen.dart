import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column Screen',
          style: TextStyle(color: Colors.lime, fontSize: 50),
        ),
        backgroundColor: Colors.purpleAccent,
      ),

      // body: Container(
      //   color: Colors.cyan,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,

      //     children: [
      //       Column(
      //         children: [
      //           Icon(Icons.star, size: 50),
      //           Icon(Icons.star, size: 50),
      //         ],
      //       ),
      //       Column(children: [Icon(Icons.star, size: 50)]),
      //     ],
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("button 1 "),
              style: TextButton.styleFrom(backgroundColor: Colors.yellowAccent),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("button 2 "),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("button 3 "),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
