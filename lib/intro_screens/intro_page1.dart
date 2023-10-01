import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Center(
              child: Lottie.asset("lib/Assets/animation_ln6ciw2a.json", repeat: false),
            ),
            const SizedBox(height: 40,),
      
            const Center(child: Text("Welcome to (name of our app). We do (this and that)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),),)
          ],
        ),
      )
    );
  }
}