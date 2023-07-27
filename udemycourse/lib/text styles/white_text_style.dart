import 'package:flutter/material.dart';

class WhiteTextStyle extends StatelessWidget {
  const WhiteTextStyle(this.textArgument, {super.key});

  final String textArgument;

  @override
  Widget build(BuildContext context) {
    return Text(
      textArgument,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
