import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   // useMaterial3: true,
      // ),
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
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {

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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            equation,
                            style: const TextStyle(
                              fontSize: 40.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                        const SizedBox(width: 30.0,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70.0,
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
                              buttonPressed('%');
                            },
                            child: const Text(
                              '%',
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
                              buttonPressed('00');
                            },
                            child: const Text(
                              '00',
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
