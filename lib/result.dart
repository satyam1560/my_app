import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  const Result(this.resetHandler, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "you did it.!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
