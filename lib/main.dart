import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เครื่องคิดเลข"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey[300],
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "0",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Row(
            children: [
              button("C"),
              button("%"),
              button("/"),
            ],
          ),
          Row(
            children: [
              button("7"),
              button("8"),
              button("9"),
              button("*"),
            ],
          ),
          Row(
            children: [
              button("4"),
              button("5"),
              button("6"),
              button("-"),
            ],
          ),
          Row(
            children: [
              button("1"),
              button("2"),
              button("3"),
              button("+"),
            ],
          ),
          Row(
            children: [
              button("0"),
              button("="),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
