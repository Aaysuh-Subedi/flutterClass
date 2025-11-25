import 'package:firstproject/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => showMySnackBar(
                context: context,
                message: 'This is my container 1',
              ),

              child: Container(
                // height: 300,
                width: double.infinity,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text('Contaier1'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            // fit: FlexFit.tight,
            child: GestureDetector(
              onDoubleTap: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.blue,
                  content: Text("This is container 2"),
                  duration: Duration(seconds: 1),
                  behavior: SnackBarBehavior.floating,
                ),
              ),
              child: Container(
                // height: 300,
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('Contaier2'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
