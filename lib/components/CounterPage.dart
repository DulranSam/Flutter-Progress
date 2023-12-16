import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void ResetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: incrementCounter,
                    child: const Text("Increment")),
              ),
              Text("You pushed the button $counter many times"),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  onPressed: decrementCounter, child: const Text("Decrement")),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  onPressed: ResetCounter, child: const Text("Reset"))
            ]),
      ),
    );
  }
}
