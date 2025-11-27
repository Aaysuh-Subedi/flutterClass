import 'package:firstproject/common/mysnackbar.dart';
import 'package:firstproject/screens/ArithmeticOperations.dart';
import 'package:firstproject/screens/dashboard.dart';
import 'package:firstproject/widget/my_button.dart';
import 'package:flutter/material.dart';

class Customelayout extends StatelessWidget {
  const Customelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custome Layout Screen",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '''     This is how we use button  ------------------------------------------------
                ''',
              style: TextStyle(fontSize: 30, color: Colors.indigo),
            ),
            MyButton(
              text: 'Dashboard',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
                showMySnackBar(
                  context: context,
                  message: "Navigating to Dashborad",
                );
              },
            ),
            SizedBox(height: 12),
            MyButton(
              text: 'Arthimetic',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArithmeticOperations(),
                  ),
                );
              },
            ),
            SizedBox(height: 12),
            MyButton(text: 'Button3', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
