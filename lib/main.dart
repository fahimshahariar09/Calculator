import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  Widget calcbutton(String btntxt, Color btncolors, Color textcolor) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          //TOOD add funation for button press
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 20,
            color: textcolor,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: btncolors,
        padding: EdgeInsets.all(0),
        minWidth: 50,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Calculator disply
              Row
                (
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "0",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontSize: 70, height: 3),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some
                  calcbutton('C', Colors.black, Colors.white),
                  calcbutton('%', Colors.black, Colors.white),
                  calcbutton('Del', Colors.black, Colors.white),
                  calcbutton('/', Colors.black, Colors.white),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some
                  calcbutton('7', Colors.white, Colors.black),
                  calcbutton('8', Colors.white, Colors.black),
                  calcbutton('9', Colors.white, Colors.black),
                  calcbutton('*', Colors.black, Colors.white),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some
                  calcbutton('4', Colors.white, Colors.black),
                  calcbutton('5', Colors.white, Colors.black),
                  calcbutton('6', Colors.white, Colors.black),
                  calcbutton('-', Colors.black, Colors.white),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some
                  calcbutton('1', Colors.white, Colors.black),
                  calcbutton('2', Colors.white, Colors.black),
                  calcbutton('3', Colors.white, Colors.black),
                  calcbutton('+', Colors.black, Colors.white),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //this is function
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 100, 10),
                    onPressed: () {
                      //botton function
                    },
                    shape: StadiumBorder(),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  calcbutton('.', Colors.white, Colors.black),
                  calcbutton('=', Colors.black, Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
