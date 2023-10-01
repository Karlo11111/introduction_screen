import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 150),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset("lib/Assets/animation_ln7emx4n.json", height: 170, ),
                Lottie.asset("lib/Assets/animation_ln7eqygk.json", height: 170, ),
              ],
            ),
            
            const SizedBox(height: 40,),
      
            const Center(child: Text("When you make a reservation, you automatically get a digital key, as well as the option to order room service through our app.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),),)
          ],
        ),
      ),
    );
  }
}