import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/gradient_container.dart';

void main() {
  // the const here help improve performance, if this will be reused
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        body: GradientContainer(colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 23, 6, 47),
        ]),
      ),
    ),
  );
}
