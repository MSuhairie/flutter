import 'package:flutter/material.dart';
// import 'package:first_app/style_text.dart';
import 'package:first_app/dice_roller.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.warna({super.key}) 
  : color1 = Colors.black, 
    color2 = Colors.amberAccent; 

  final Color color1;
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: beginAlignment,
              end: endAlignment, 
            ),
          ),
          child: const Center(
            child: DiceRoller(), 
          ),
        );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.greenAccent,
//                 Color.fromARGB(255, 212, 176, 16),
//               ],
//               begin: beginAlignment,
//               end: endAlignment, 
//             ),
//           ),
//           child:  const Center(
//             child: StyleText('Hello Word !!'),
//           ),
//         );
//   }
// }