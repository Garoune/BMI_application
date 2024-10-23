import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/consstants.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  _TapTestState createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: TextStyle(
                  color: Colors.black, // Ensure you use `Colors.black` if `black` is not defined
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text('click'),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    counter++;
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: greenbackground,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
