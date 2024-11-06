import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/dice_roller.dart';
// import 'package:my_first_flutter_app/styled_text.dart';

// Alignment? startAlignment;
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// with the following, we can now add const to BoxDecoration
// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

// final
// final startAlignment =getStartAlignment()

// const compiled time constant
class GradientContainer extends StatelessWidget {
// When defining your own classes with your own constructor functions
// you often can add const in front of them
// to tell Dart that this in the end is a class that can be optimized
// constructor function
//make sure that key value, which is wanted by the parent class is forwarded correctly
  // const GradientContainer({super.key, required this.colors});
  // final List<Color> colors;
  // default constructor function
  const GradientContainer(this.color1, this.color2, {super.key});

  // Named constructor
// const GradientContainer.purple({super.key}): color1 = Colors.deepPurple,color2 = Colors.indigo
//
  final Color color1;
  final Color color2;

  @override
  //you can simply think of context as a metadata object that contains some useful information about this widget
  // this build method is called automatically by Flutter(when it renders the user interface)
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
