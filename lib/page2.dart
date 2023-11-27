// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String>images=[
    'assets/r1.jpg',
    'assets/r2.jpg',
    'assets/r3.jpg',
    'assets/r4.jpg',
    'assets/r5.jpg',
    'assets/r6.jpg',
    'assets/r7.jpg',
    'assets/r8.jpg',
    'assets/r9.jpg',
    'assets/r10.jpg'
  ];
  String _text='';
  String _text1='';

  int _x1=-1;
  void updateText(){
    setState(() {

      if(_x1==1){
        _text=(images[0]).toString();
        _text1="1Ω";

      }
      else if(_x1==2){
        _text=(images[1]).toString();
        _text1="2Ω";

      }
      else if(_x1==3){
        _text=(images[2]).toString();
        _text1="3Ω";

      }
      else if(_x1==4){
        _text=(images[3]).toString();
        _text1="4Ω";

      }
      else if(_x1==5){
        _text=(images[4]).toString();
        _text1="5Ω";

      }
      else if(_x1==6){
        _text=(images[5]).toString();
        _text1="6Ω";

      }
      else if(_x1==7){
        _text=(images[6]).toString();
        _text1="7Ω";

      }
      else if(_x1==8){
        _text=(images[7]).toString();
        _text1="8Ω";

      }
      else if(_x1==9){
        _text=(images[8]).toString();
        _text1="9Ω";

      }
      else if(_x1==10){
        _text=(images[9]).toString();
        _text1="10Ω";

      }

    });
  }
  void updateX1(String x){
    if(x.trim()==''){
      _x1=-1;
    }
    else{
      _x1=int.parse(x);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resistor App",style: TextStyle(color: Colors.black,fontSize: 60)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Enter Your Resistor Number:",style: TextStyle(color: Colors.lightBlue,fontSize: 30)),
            MytextField(f: updateX1),
            ElevatedButton(onPressed:updateText, child: Text('Enter')),
            Text("The Result is $_text1 ",style: TextStyle(color: Colors.red,fontSize: 30),),
            Image.asset(_text,width: 250,height: 250),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Icon(Icons.navigate_before,size: 50)),
          ],
        ),
      ) ,
    );
  }
}
class MytextField extends StatelessWidget {
  Function(String)f;
  MytextField({required this.f,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        style: TextStyle(color: Colors.black,fontSize: 40),
        decoration: InputDecoration(
            border: OutlineInputBorder(),hintText: "enter nb"
        ),
        onChanged: (value){f(value);},
      ),
    );
  }
}






