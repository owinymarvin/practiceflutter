import 'package:flutter/material.dart';
import 'package:udemycourse/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(211, 136, 62, 240),
          ],
        ),
      ),
    ),
  );
}
