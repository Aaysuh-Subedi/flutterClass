import 'package:firstproject/screens/AreaOfCircle.dart';
import 'package:firstproject/screens/ArithmeticOperations.dart';
import 'package:firstproject/screens/Armstrong.dart';
import 'package:firstproject/screens/Palindrome.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(fontSize: 26)),

        backgroundColor: Colors.blue,
        titleSpacing: 150,
      ),

      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            // SizedBox(height: 12),
            // TextField(
            //   decoration: InputDecoration(
            //     label: Text("Enter your number:"),
            //     hintText: ("eg :231"),
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 12),
            // TextField(
            //   decoration: InputDecoration(
            //     label: Text("Enter your second number:"),
            //     hintText: ("eg :5123"),
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 12),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Palindrome(),
                    ),
                  );
                },
                child: Text("Palindrome", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Armstrong(),
                    ),
                  );
                },
                child: Text("Armstrong", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const ArithmeticOperations(),
                    ),
                  );
                },
                child: Text(
                  "Arithmetic Operations",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Areaofcircle(),
                    ),
                  );
                },
                child: Text("Area of Circle", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
