import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/consstants.dart';
import 'package:flutter_bmi_app/widgets/background_shape_left.dart';
import 'package:flutter_bmi_app/widgets/background_shape_right.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final weightController = TextEditingController();
  final heightController = TextEditingController();
  
  double resultBMI = 0;
  String resultText = '';
  double widthGood = 100;
  double widthBad = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            ' ?تو چنده BMI',
            style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                    width: 130,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangebackground,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: orangebackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),Container(
                    width: 130,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangebackground,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: orangebackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                  SizedBox( height: 40,),
                  InkWell(
                    onTap: (){
                      final weight = double.parse(weightController.text);
                      final height = double.parse(heightController.text);
                      
                      setState(() {
                        resultBMI = weight/ (height* height);
                        if (resultBMI > 25){
                          widthBad = 270;
                          widthGood=50;
                          resultText ='شما اضافه وزن دارید';
                        }
                        else if(resultBMI >= 18.5  &&  resultBMI <= 25){
                          widthBad = 50;
                          widthGood=270;
                          resultText = 'وزن شما نرمال است';
                        }
                        else{
                          widthBad = 10;
                          widthGood=10;
                          resultText= 'وزن شما کمتر از حد نرمال است';
                        }
                      });
                    },
                    child: Text('محاسبه کن',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                                     ),
                  ),
                 SizedBox(
                  height: 40,
                 ),
                 Text('${resultBMI.toStringAsFixed(2)}',
                 style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold
                 ),),
                 Text('$resultText',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: orangebackground
                  ),
                 ),
                 SizedBox(
                  height: 20,
                 ),
                 RightShape(
                  width: widthBad,
                 ),
                 SizedBox(
                  height: 15,
                 ),
                 LeftShape(
                  width: widthGood,
                 ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}