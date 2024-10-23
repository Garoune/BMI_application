import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/consstants.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({super.key, this.width=0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
       children:[
        Container(
        height: 40.0,
        width: width,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               topRight: Radius.circular(20),
               bottomRight: Radius.circular(20)), 
               color: greenbackground,
             ),
           ),
        SizedBox(
          width: 5,
        ),    
        Text('شاخص مثبت',
        style: TextStyle(
          color: Colors.green
        ),),
        ],
     );
  }
}