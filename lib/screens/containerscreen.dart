import 'package:firstproject/app.dart';
import 'package:flutter/material.dart';

class Containerscreen extends StatelessWidget {
  const Containerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Screen"), titleSpacing: 120),
      body: Center(
        child: Container(
          // height: 200,
          // width: 200,
          // alignment: Alignment.center,
          // child: Text("This is a container"),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   color: Colors.amberAccent,
          //   border: Border.all(color: Colors.black, width: 2),
          // ),
          height: double.infinity,
          width: double.infinity,

          alignment: Alignment.centerRight,

          child: Text("Hello"),
        ),
      ),
    );
  }
}
