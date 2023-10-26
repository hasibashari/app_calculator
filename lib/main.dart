import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Calculator'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(9.0),
          child: SizedBox(
            width: double.infinity,
            child: CalcWidget(),
          ),
        ),
      ),
    );
  }
}

class CalcWidget extends StatefulWidget {
  const CalcWidget({super.key});
  @override
  CalcWidgetState createState() => CalcWidgetState();
}

class CalcWidgetState extends State<CalcWidget> {
  @override
  Widget build(BuildContext context) {
    return const SimpleCalculator();
  }
}
