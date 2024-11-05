import 'package:flutter/material.dart';

void main() {
  // the const here help improve performance, if this will be reused
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 23, 6, 47)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    ),
  );
}
