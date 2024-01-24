import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '';
  String expression = '';
  String op = '';
  double temp = 0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        result = '';
      }
      else if (buttonText == 'C') {
        result = result.substring(0, result.length - 1);
      }
      else if (
        buttonText == '1' || 
        buttonText == '2' || 
        buttonText == '3' ||
        buttonText == '4' ||
        buttonText == '5' ||
        buttonText == '6' ||
        buttonText == '7' ||
        buttonText == '8' ||
        buttonText == '9' ||
        buttonText == '0' ||
        buttonText == '.'
        ) {
        result += buttonText;
      }
      else if (
        buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '÷'
      ) {
        expression = result;
        temp = double.parse(expression);
        result = '';
        switch (buttonText) {
          case '+':
            op = '+';
            break;
          case '-':
            op = '-';
            break;
          case 'x':
            op = 'x';
            break;
          case '÷':
            op = '÷';
            break;
        }
      }
      else if (buttonText == '=') {
        expression = result;
        switch (op) {
          case '+':
            temp += double.parse(expression);
            break;
          case '-':
            temp -= double.parse(expression);
            break;
          case 'x':
            temp *= double.parse(expression);
            break;
          case '÷':
            temp /= double.parse(expression);
            break;
        }
        result = temp.toString();
        op = '';
      }
      else {
        result = 'ERROR';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            result,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white, fontSize: 80.0
                            )
                          )
                        ),
                        const SizedBox(width: 30.0),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 160.0,
                          height: 70.0,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('AC');
                            },
                            child: const Text(
                              'AC',
                              style: TextStyle(
                                fontSize: 30.0
                              )
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('C');
                            },
                            child: const Text(
                              'C',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('÷');
                            },
                            child: const Text(
                              '÷',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('7');
                            },
                            child: const Text(
                              '7',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('8');
                            },
                            child: const Text(
                              '8',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('9');
                            },
                            child: const Text(
                              '9',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('x');
                            },
                            child: const Text(
                              'x',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                      ],
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('4');
                            },
                            child: const Text(
                              '4',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('5');
                            },
                            child: const Text(
                              '5',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('6');
                            },
                            child: const Text(
                              '6',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('-');
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('1');
                            },
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('2');
                            },
                            child: const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('3');
                            },
                            child: const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('+');
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 160.0,
                          height: 70.0,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('0');
                            },
                            child: const Text(
                              '0',
                              style: TextStyle(
                                fontSize: 30.0
                              )
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)
                            ),
                            onPressed: () {
                              buttonPressed('.');
                            },
                            child: const Text(
                              '.',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                            ),
                            onPressed: () {
                              buttonPressed('=');
                            },
                            child: const Text(
                              '=',
                              style: TextStyle(
                                fontSize: 30.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
