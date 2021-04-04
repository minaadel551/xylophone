import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MaterialApp(
      home: Scaffold(backgroundColor: Colors.black, body: MyApp())));
}


class MyApp extends StatelessWidget {


  Expanded ftn(int num, Color color) {    // Expanded or Widget
    return Expanded(
        child: TextButton(
     style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all<Color>(color)
     ),
      onPressed: () {
        final player = AudioCache();
        player.play('note$num.wav');
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ftn(1, Colors.red),
            ftn(2, Colors.yellow),
            ftn(3, Colors.orange),
            ftn(4, Colors.green),
            ftn(5, Colors.teal),
            ftn(6, Colors.indigo),
            ftn(7, Colors.brown),
          ],
        ),
      ),
    );
  }
}
