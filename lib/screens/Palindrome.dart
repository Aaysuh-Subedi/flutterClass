import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeCheckerState();
}

class _PalindromeCheckerState extends State<Palindrome> {
  // Controller
  final TextEditingController numberController = TextEditingController(
    text: "121",
  );

  // Global key
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String result = "";

  bool isPalindrome(String value) {
    String reversed = value.split('').reversed.join('');
    return reversed == value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome Checker", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.lime,
        titleSpacing: 85,
      ),
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 12),

              // Input Field
              TextFormField(
                keyboardType: TextInputType.number,
                controller: numberController,
                decoration: InputDecoration(
                  label: Text("Enter a number:"),
                  hintText: "eg... 121",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return "Only numbers allowed";
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
                      String number = numberController.text;

                      setState(() {
                        result = isPalindrome(number)
                            ? "$number is a Palindrome"
                            : "$number is NOT a Palindrome";
                      });
                    }
                  },
                  child: Text("Check", style: TextStyle(fontSize: 20)),
                ),
              ),

              SizedBox(height: 20),

              // Result Text
              Text(
                "Result: $result",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
