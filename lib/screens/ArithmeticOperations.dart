import 'package:flutter/material.dart';

class Arithmeticoperations extends StatefulWidget {
  const Arithmeticoperations({super.key});

  @override
  State<Arithmeticoperations> createState() => _ArithmeticoperationsState();
}

class _ArithmeticoperationsState extends State<Arithmeticoperations> {
  //controller
  final TextEditingController firstController = TextEditingController(
    text: "55",
  );

  final TextEditingController secondContoller = TextEditingController(
    text: "55",
  );

  // Global key
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                // onChanged: (value) => {first = int.tryParse(value) ?? 0},
                controller: firstController,
                decoration: InputDecoration(
                  label: Text("Enter your first number:"),
                  hintText: ("eg...55"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter  number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                // onChanged: (value) => {second = int.tryParse(value) ?? 0},
                controller: secondContoller,
                decoration: InputDecoration(
                  label: Text("Enter your second number:"),
                  hintText: ("eg...55"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter  number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      // valid
                      int firstNo = int.parse(firstController.text);
                      int secondNo = int.parse(secondContoller.text);
                      setState(() {
                        result = firstNo + secondNo;
                      });
                    }
                  },
                  child: Text("Calculate", style: TextStyle(fontSize: 20)),
                ),
              ),

              SizedBox(height: 12),
              Text("Total is: $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
