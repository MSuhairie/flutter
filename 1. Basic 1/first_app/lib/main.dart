import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 190, 27, 27),
          Color.fromARGB(255, 18, 38, 219),
        ),
      ),
    ),
  );
}