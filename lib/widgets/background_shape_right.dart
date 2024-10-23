import 'package:flutter/material.dart';



class RightShape extends StatelessWidget {
  final double width;
  const RightShape({super.key, this.width=0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
       children:[ 
        Text('شاخص منفی',
        style: TextStyle(
          color: Colors.red
        ),),
        SizedBox(
          width: 5,
        ),
        Container(
        height: 40.0,
        width: width,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(20),
               bottomLeft: Radius.circular(20)), 
               color: Colors.red,
             ),
           ),
        ],
     );
  }
}