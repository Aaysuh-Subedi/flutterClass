import 'package:flutter/material.dart';

class ArithmeticOperations extends StatefulWidget {
  const ArithmeticOperations({super.key});

  @override
  State<ArithmeticOperations> createState() => _ArithmeticOperationsState();
}

class _ArithmeticOperationsState extends State<ArithmeticOperations> {
  // Controllers
  final TextEditingController firstController = TextEditingController(
    text: "55",
  );
  final TextEditingController secondController = TextEditingController(
    text: "55",
  );

  // Global key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int result = 0;
  String selectedOperation = "Add"; // Default operation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Arithmetic Operations",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.purpleAccent,
        titleSpacing: 85,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: const InputDecoration(
                  label: Text("Enter your first number:"),
                  hintText: "eg...55",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: const InputDecoration(
                  label: Text("Enter your second number:"),
                  hintText: "eg...55",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Choose Operation:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // Radio Buttons
              RadioListTile<String>(
                title: const Text("Add"),
                value: "Add",
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Subtract"),
                value: "Subtract",
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Multiply"),
                value: "Multiply",
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Divide"),
                value: "Divide",
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value!;
                  });
                },
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int firstNo = int.parse(firstController.text);
                      int secondNo = int.parse(secondController.text);

                      setState(() {
                        switch (selectedOperation) {
                          case "Add":
                            result = firstNo + secondNo;
                            break;
                          case "Subtract":
                            result = firstNo - secondNo;
                            break;
                          case "Multiply":
                            result = firstNo * secondNo;
                            break;
                          case "Divide":
                            result = secondNo != 0
                                ? (firstNo ~/ secondNo)
                                : 0; // Integer division
                            break;
                        }
                      });
                    }
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text("Result: $result", style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
