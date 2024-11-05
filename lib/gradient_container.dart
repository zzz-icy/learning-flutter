import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
// When defining your own classes with your own constructor functions
// you often can add const in front of them
// to tell Dart that this in the end is a class that can be optimized
// constructor function
//make sure that key value, which is wanted by the parent class is forwarded correctly
  const GradientContainer({super.key});

  @override
  //you can simply think of context as a metadata object that contains some useful information about this widget
  // this build method is called automatically by Flutter(when it renders the user interface)
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 23, 6, 47)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
