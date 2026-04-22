import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // variable declaration
  String title = "";
  int counter = 0;

  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();

  double total = 0;

  @override
  void initState() {
    super.initState();
    title = "Welcome to Calculator App";
    number1.text = "0";
    number2.text = "0";
    total = 0;
  }

  void addNumbers() {
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void subtractNumbers() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void multiplyNumbers() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  void handleButtonClick() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(title)),
          const SizedBox(height: 10),

          Center(child: Text("Counter: $counter")),
          ElevatedButton(
            onPressed: handleButtonClick,
            child: const Text("Increment Counter"),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: number1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Number 1"),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: number2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Number 2"),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: addNumbers,
            child: const Text("Add"),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: subtractNumbers,
            child: const Text("Subtract"),
          ),

           const SizedBox(height: 10),

          ElevatedButton(
            onPressed: multiplyNumbers,
            child: const Text("Multiply"),
          ),

          const SizedBox(height: 10),

          Text(
            "Total is $total",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
