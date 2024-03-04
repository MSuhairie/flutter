import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 216, 45, 45),
            Color.fromARGB(255, 14, 53, 32),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class StyleText extends StatelessWidget {
//   const StyleText(this.text, {super.key});

//   final String text;

//   @override
//   Widget build(context){
//     return Text(
//       text,
//       style: const TextStyle(
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//         fontSize: 20,
//       ),
//     );
//   }
// }

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DicerRollerState();
  }
}

class _DicerRollerState extends State<DiceRoller> {
  var currentDiceRoller = 1;
  void diceRoller(){
    setState(() {
      currentDiceRoller = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoller.png', 
          width: 100,
        ),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: diceRoller,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black12,
          ),
          child: const Text('Dice Roller', 
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

