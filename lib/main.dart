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
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      playSound(1);
                  },
                    child: Text('ClickMe'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                  color: Colors.redAccent,
                  onPressed: (){
                    playSound(2);
                  },
                  child: Text('ClickMe'),
                ),
                ),
                Expanded(
                    child: FlatButton(
                      color: Colors.amber,
                      onPressed: (){
                        playSound(3);
                      },
                      child: Text('ClickMe'),
                    ),
                ),

                Expanded(
                  child: FlatButton(
                    color: Colors.amberAccent,
                    onPressed: (){
                      playSound(4);
                  },
                    child: Text('ClickMe'),
                  ),
                ),
                Expanded(
                    child:FlatButton(
                      color: Colors.orange,
                      onPressed: (){
                        playSound(5);
                      },
                      child: Text('ClickMe'),
                    ),
                ),

                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      playSound(6);
                  },
                    child: Text('ClickMe'),
                  ),
                ),
                Expanded(
                    child:FlatButton(
                      color: Colors.blueAccent,
                      onPressed: (){
                        playSound(7);
                      },
                      child: Text('ClickMe'),
                    ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
