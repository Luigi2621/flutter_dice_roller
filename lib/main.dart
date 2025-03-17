import 'package:flutter/material.dart';

import 'package:basic_topics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp( //MaterialApp's build() method is executed
      home: Scaffold( //Scaffold's build() method is executed
        body: GradientContainer( //GradientContainer's build() methond is executed
           Color.fromARGB(255, 42, 157, 143) ,
           Color.fromARGB(255, 244, 162, 97),),
    ),
  ),
  );
}

//A class must be written with the first letter in capitals, and if it has spaces, use an underscore _ instead.
