import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Text(
          'Count: $_count',
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _decrement,
              heroTag: 'decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              onPressed: _increment,
              heroTag: 'increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
