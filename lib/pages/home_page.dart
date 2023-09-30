import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Lottie.asset("lib/Assets/animation_lmxzhame.json")
            ),
          ),
          const SizedBox(height: 40),

          const Text("Book our Hotel", style: TextStyle(fontSize: 50),)
        ],
      )
    );
  }
}