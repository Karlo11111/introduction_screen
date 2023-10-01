import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Center(
              child: Lottie.asset("lib/Assets/animation_ln6d5718.json")
            ),
            const SizedBox(height: 40,),
      
            const Center(child: Text("Through our app you can make reservations to any hotel", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),),)
          ],
        ),
      ),
    );
  }
}