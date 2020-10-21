import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/components/buttons.dart';

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {

  List<String> buttons =
      [
        "C","DEL","%","/",
        "7","8","9","x",
        "4","5","6","-",
        "1","2","3","+",
        "0",".","ANS","=",
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (BuildContext context,int index)
                {
                  if(index == 0)
                    {
                      return Center(
                        child: CalcButton(
                          btn_color: Colors.green,
                          btn_text: buttons[index],
                          btn_text_color: Colors.white,
                        ),
                      );
                    }
                  else
                    {
                      if(index == 1)
                        {
                          return Center(
                            child: CalcButton(
                              btn_color: Colors.redAccent,
                              btn_text: buttons[index],
                              btn_text_color:  Colors.white ,
                            ),
                          );
                        }
                      else
                      {
                        return Center(
                          child: CalcButton(
                            btn_color: isOperator(buttons[index]) ?  Colors.indigo :  Colors.white,
                            btn_text: buttons[index],
                            btn_text_color: isOperator(buttons[index]) ?  Colors.white :  Colors.indigo,
                          ),
                        );
                      }

                    }


                })
              ))
        ],
      ),
    );
  }

  bool isOperator(String op)
  {
    if(op == "%" ||  op == "/" || op == "x" || op == "-" || op == "+" || op == "=")
      {
        return true;
      }
    return false;
  }


}
