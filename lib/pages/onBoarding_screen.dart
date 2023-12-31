// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:introduction_screen/intro_screens/intro_page1.dart';
import 'package:introduction_screen/intro_screens/intro_page2.dart';
import 'package:introduction_screen/intro_screens/intro_page3.dart';
import 'package:introduction_screen/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {

  final PageController _controller = PageController();


  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
        ],
      ),
      
     
         //dot indicator
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
            
                  //next or done button
                  if (onLastPage) GestureDetector(
                      onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context){
                      return const HomePage();
                  })
                  );
                },
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(19)),
                  padding: const EdgeInsets.all(16),
                  child: const Center(child: Text("DONE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),))
                )
                ) else GestureDetector(
                onTap: () {
                    _controller.nextPage(
                    duration: const Duration(milliseconds: 500), 
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(19)),
                  padding: const EdgeInsets.all(16),
                  child: const Center(child: Text("NEXT", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),))
                    )
                  
                  ),
                  const SizedBox(height: 50,),
                  SmoothPageIndicator(controller: _controller, count: 3, effect: SlideEffect(activeDotColor: Colors.blue, dotWidth: 30, type: SlideType.normal )),
                  const SizedBox(height: 50,)
                ],
              ),
            ),

      ]
      

      )
    );
  }
}