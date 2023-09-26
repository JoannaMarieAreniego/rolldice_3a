import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => 
   _RollDiceScreenState();
}
int activeDiceFace = 6;
List<String> diceImage = [
  'https://webstockreview.net/images/dice-clipart-one-9.png',
  'https://jooinn.com/images/2-dice-2.png',
  'https://th.bing.com/th/id/R.877a6688cdc5f2cdd2ee845eb35451d0?rik=PZe8AE6M4dgZpA&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fpKa%2fniXpKan6T.png&ehk=857pev9kJKQxS5pOZJMSgaD908I4hXzp961VAw6jdi0%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.777da3d62510c711f3bbb32e93a049c6?rik=hepwsHq3gx2vmA&riu=http%3a%2f%2fclipart-library.com%2fimages%2f8TGbX8AGc.png&ehk=I5JFAxYvieF6S938g7ybWYQSuMwTjv%2fhKw%2f%2f%2fQ84vLU%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/OIP.eolV3-TnCn6QrLAuuAa5zAHaHa?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/OIP.cBSiafC8W7_u6IXvbm2DWgHaHa?pid=ImgDet&rs=1',
  'https://66.media.tumblr.com/c072ad49d6f7bbe711f8c352ebb52404/tumblr_oszycjWyqs1w4766eo3_540.gifv'
];
class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.yellow,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          ),
        ),
        child: Center(child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Roll Dice',
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.network(diceImage[activeDiceFace],
            width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: (){
              var ranNum = Random().nextInt(6);
              setState(() {
               activeDiceFace = ranNum;
              });
              print('button pressed');
            }, 
            child: const Text ('Roll!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              backgroundColor: Colors.green,
            ),
            ),
          ),
        ],
        ),
        ),
      ),
    );
  }
}