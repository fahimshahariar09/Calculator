import 'package:flutter/material.dart';

class CalculatorDesign extends StatefulWidget {
  const CalculatorDesign({super.key});

  @override
  State<CalculatorDesign> createState() => _CalculatorDesignState();
}
class _CalculatorDesignState extends State<CalculatorDesign> {
  Widget calcbutton(String btntxt,Color btncolors,Color textcolor) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          //TOOD add funation for button press
        },
        child: Text(btntxt,
          style: TextStyle(
            fontSize: 50,
            color: textcolor,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: btncolors,
        padding: EdgeInsets.all(10),
      ),
    );
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Calculator",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,

        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Calculator disply
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.all(10),
                      child: Text("0",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 100, height: 3
                        ),
                      ),
                    ),
                  ],
                ),
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
              SizedBox(height: 20,),
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
              SizedBox(height: 20,),
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
              SizedBox(height: 30,),
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //this is function
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(40, 20, 170, 20),
                    onPressed: () {
                      //botton function
                    },
                    shape: StadiumBorder(),
                    child: Text("0",
                      style: TextStyle(
                        fontSize: 35,
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
      );
    }
  }
