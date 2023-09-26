import 'package:flutter/material.dart';
import 'package:roledice_aa/screens/rollldice.dart';

void main(){
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RollDiceScreen(),
    );
  }
}