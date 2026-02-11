import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/slideCard.dart';
import 'package:flutter/material.dart';

class HelloCard extends StatelessWidget {
  const HelloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
                Positioned(
                  top: 0,
                  left: 0,
                  width: 200,
                  child: Image.asset(bluebackground2),
                ),
                Slidecard(),
          ]
          
        ),
     
      ),
      
    );
  }
}
