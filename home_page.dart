// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _numero1Controller = TextEditingController();
  final TextEditingController _numero2Controller = TextEditingController();

  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(
          "Calculadora",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _numero1Controller,
              decoration: InputDecoration(
                hintText: "Digite o primeiro número",
                hintStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            TextFormField(
              controller: _numero2Controller,
              decoration: InputDecoration(
                hintText: "Digite o segundo número",
                hintStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_numero1Controller.text);
                    double num2 = double.parse(_numero2Controller.text);
                    setState(
                      () {
                        resultado = num1 + num2; // Exemplo de soma
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_numero1Controller.text);
                    double num2 = double.parse(_numero2Controller.text);
                    setState(
                      () {
                        resultado = num1 - num2; // Exemplo de soma
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: multi,
                  style: ElevatedButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  child: Text(
                    'x',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: divi,
                  style: ElevatedButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  child: Text(
                    '/',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              '$resultado',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  void multi() {
    double num1 = double.parse(_numero1Controller.text);
    double num2 = double.parse(_numero2Controller.text);
    setState(
      () {
        resultado = num1 * num2;
      },
    );
  }

  void divi() {
    double num1 = double.parse(_numero1Controller.text);
    double num2 = double.parse(_numero2Controller.text);
    setState(
      () {
        resultado = num1 / num2;
      },
    );
  }
}
