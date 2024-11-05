import 'package:flutter/material.dart';

void main() {
  // the const here help improve performance, if this will be reused
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );
}
