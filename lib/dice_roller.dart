import 'dart:math';   //This is to be used with the Random constructor function
                      //to create an object that has various methods that help us with the generation
                      //of random values, random numbers
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller>{
  
  var currentDiceRoll = 2;
  
  void rollDice() {
       
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +1; //This outputs a  0 <> 6 number
      
    });   
    
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
            const SizedBox(height: 20),   //This is the box that is replacing the padding. Notice it's between the image and the button
            ElevatedButton(                  //This is the type of button. There is also 'TextButton'
              onPressed: rollDice,          //This is the pointer to the function declared above
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(
                //   top 20,
                //),
                foregroundColor: const Color.fromARGB(255, 233, 196, 106),
                backgroundColor: const Color.fromARGB(255, 231, 111, 81),
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'), //Text from the button
            ),
          ],
        );
  }
}