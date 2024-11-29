import 'dart:math';

import 'package:crypto/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  Widget getRow(String num1, String num2, String num3, String num4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: getColorText(num1),
            side: BorderSide(
              color: getColorBorder(num1),
            ),
          ),

          ///color border

          onPressed: () {
            if (num1 == 'ce') {
              if (inputUser.length > 0) {
                setState(() {
                  inputUser = inputUser.substring(0, inputUser.length - 1);
                });
              }
            } else {
              getAction(num1);
            }
          },
          child: Text(
            num1,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: getColorText(num2),
            side: BorderSide(
              color: getColorBorder(num2),
            ),
          ),
          onPressed: () {
            if (num2 == 'ac') {
              setState(() {
                inputUser = '';
                result = '';
              });
            } else {
              getAction(num2);
            }
          },
          child: Text(
            num2,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: getColorText(num3),
            side: BorderSide(
              color: getColorBorder(num3),
            ),
          ),
          onPressed: () {
            getAction(num3);
          },
          child: Text(
            num3,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: getColorText(num4),
            side: BorderSide(
              color: getColorBorder(num4),
            ),
          ),
          onPressed: () {
            if (num4 == '=') {
              Parser parser = Parser();
              Expression expression = parser.parse(inputUser);
              ContextModel context = ContextModel();
              var evalu = expression.evaluate(EvaluationType.REAL, context);
              setState(() {
                result = evalu.toString();
              });
            } else {
              getAction(num4);
            }
          },
          child: Text(
            num4,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }

  final ColntollerDollar = TextEditingController();
  final ColntollerReial = TextEditingController();
  final ColntollerNum3 = TextEditingController();
  final ColntollerNum4 = TextEditingController();

  var inputUser = '';
  var result = '';
  double crypto = 0;
  int flag = 0;

  void getAction(String numS) {
    setState(() {
      inputUser = inputUser + numS;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundGreyDark,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              ///chang
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundGrey,
                    border: Border.all(
                      color: Colors.greenAccent.withOpacity(1),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'images/2.png',
                            ),
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 100,
                            child: TextField(
                              controller: ColntollerDollar,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: '',
                                  fontSize: 16,
                                  color: textGrey),
                              decoration: InputDecoration(
                                hintText: '1\$',
                                hintStyle: TextStyle(
                                  fontFamily: '',
                                  fontSize: 16,
                                  color: textGrey.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            crypto = 0;
                          });
                        },
                        child: Icon(
                          Icons.currency_exchange_rounded,
                          color: textGreen,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                flag = Random().nextInt(2) + 1;
                              });
                            },
                            child: Image(
                              image: AssetImage(
                                'images/1.png',
                              ),
                              width: 25,
                              height: 25,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 100,
                            child: TextField(
                              controller: ColntollerReial,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: '',
                                  fontSize: 16,
                                  color: textGrey),
                              decoration: InputDecoration(
                                hintText: '60000T',
                                hintStyle: TextStyle(
                                  fontFamily: '',
                                  fontSize: 16,
                                  color: textGrey.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      maximumSize: Size(200, 40),
                      side: BorderSide(color: textGreen, width: 2),
                      foregroundColor: textGrey),
                  onPressed: () {
                    // Parser parser = Parser();
                    // Expression expression = parser.parse(inputUser);
                    // ContextModel context = ContextModel();
                    // var evalu =
                    //     expression.evaluate(EvaluationType.REAL, context);
                  },
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          var reial = double.parse(ColntollerDollar.text);
                          var dollar = double.parse(ColntollerDollar.text);
                          if (dollar > 0) {
                            setState(() {
                              crypto = dollar * 0.000019361;
                            });
                          }
                        },
                        child: Image(
                          width: 27,
                          height: 27,
                          image: AssetImage('images/bitcoin.png'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${crypto.toStringAsFixed(9)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundGrey,
                    border: Border.all(
                      color: Colors.greenAccent.withOpacity(1),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  ////reZoultcalculator

                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '$inputUser',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: textGrey,
                              fontFamily: ' '),
                        ),
                        Text(
                          '${result}',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: textGreen,
                              fontFamily: ' '),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getRow('ce', 'ac', '%', '/'),
                    getRow('7', '8', '9', '*'),
                    getRow('4', '5', '6', '+'),
                    getRow('1', '2', '3', '-'),
                    getRow('00', '0', '.', '='),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool getIsOperator(String num) {
    var numS = ['ce', 'ac', '%', '/', '*', '+', '-', '='];
    for (var operator in numS) {
      if (operator == num) {
        return true;
      }
    }
    return false;
  }

  Color getColorBorder(String num) {
    if (getIsOperator(num)) {
      return textGreen;
    }
    return backgroundGreyDark;
  }

  Color getColorText(String num) {
    if (getIsOperator(num)) {
      return textGreen;
    }
    return textGrey;
  }
}
