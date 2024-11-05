import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // positional arguments , named arguments
  // const StyledText(String text, {super.key}) : outputText = text;
  const StyledText(this.text, {super.key});
//  keyword "this" is used inside of classes, to refer to the class itself or to refer to the object
// that will be built based on the class.
// String outputText;
// by using this.text,  you don't just wanna accept this positional argument,
// but that instead, it should also automatically be mapped
//to a class variable with the same name."

  // String text;
// this will only be set once by this argument that is received, and will not be changed thereafter.
  final String
      text; // with this the const can be re-added to the constructor function
  //because since text will never change internally,
// this is guaranteed to always be the same object
// once it has been initialized.

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
