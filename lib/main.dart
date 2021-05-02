import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(number);
        },
        child: Text('ClickMe'),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title:Text('Piano')
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                buildKey(color: Colors.red,number: 1),
                buildKey(color: Colors.redAccent,number: 2),
                buildKey(color: Colors.amber,number: 3),
                buildKey(color: Colors.amberAccent,number: 4),
                buildKey(color: Colors.orange,number: 5),
                buildKey(color: Colors.blue,number: 6),
                buildKey(color: Colors.blueAccent,number: 7),

              ],
            ),
          )
        ),
      ),
    );
  }
}
