import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Heart",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
