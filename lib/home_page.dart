import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


 


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


   var num1=0, num2=0, sum=0;

  // get text from keyboard, text editing controller

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;

    });
  }

  void doSubtract(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;

    });
  }

  void doMultiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;

    });
  }

  void doDivide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            new Text("Output: $sum", 
            style: new TextStyle(fontSize: 20.0, color: Colors.deepPurple),),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter First number..."),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Second number..."),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAddition
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: doSubtract
                ),
                
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
             new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: doMultiply
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: doDivide
                ),
                
              ],
            )

          ],
        ),
        ),
      );
  }
}