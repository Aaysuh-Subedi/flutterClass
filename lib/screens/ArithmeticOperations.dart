import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Arithmeticoperations extends StatefulWidget {
  const Arithmeticoperations({super.key});

  @override
  State<Arithmeticoperations> createState() => _ArithmeticoperationsState();
}

class _ArithmeticoperationsState extends State<Arithmeticoperations> {
  //controller
  final TextEditingController firstController = TextEditingController(
    text: "50",
  );

  final TextEditingController secondContoller = TextEditingController(
    text: "31",
  );
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.purpleAccent,
        titleSpacing: 85,
      ),
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          children: [
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.number,
              // onChanged: (value) => {first = int.tryParse(value) ?? 0},
              controller: firstController,
              decoration: InputDecoration(
                label: Text("Enter your first number:"),
                hintText: ("eg...55"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.number,
              // onChanged: (value) => {second = int.tryParse(value) ?? 0},
              controller: secondContoller,
              decoration: InputDecoration(
                label: Text("Enter your second number:"),
                hintText: ("eg...55"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result =
                        (int.tryParse(firstController.text) ?? 0) +
                        (int.tryParse(secondContoller.text) ?? 0);
                  });
                },
                child: Text("Calculate", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 12),
            Text("Total is: $result", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
