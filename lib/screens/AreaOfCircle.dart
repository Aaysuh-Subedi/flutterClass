import 'package:flutter/material.dart';

class Areaofcircle extends StatefulWidget {
  const Areaofcircle({super.key});

  @override
  State<Areaofcircle> createState() => _AreaofcircleState();
}

class _AreaofcircleState extends State<Areaofcircle> {
  //controller
  final TextEditingController radius = TextEditingController(text: "");
  // final key
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.cyan,
        titleSpacing: 100,
      ),
      body: Padding(
        padding: EdgeInsets.all(9),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: radius,
                decoration: InputDecoration(
                  label: Text("Enter your number:"),
                  hintText: ("eg radius=2.5"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number';
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
                    if (_globalKey.currentState!.validate()) {
                      double num = double.parse(radius.text);
                      setState(() {
                        result = 3.14 * num * num;
                      });
                    }
                  },
                  child: Text("Calculate", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 12),
              Text("Area of Radius: $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
