import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<void> boomBox(int noteNumber) async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(
      AssetSource('assets/note$noteNumber.wav'),
    );
  }

  Expanded buttonBuilder(int buttonNumber,
      {required MaterialColor backgroundColor}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: () async {
          boomBox(buttonNumber);
        },
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int buttonNumber;
    return MaterialApp(
      // color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buttonBuilder(buttonNumber = 1, backgroundColor: Colors.red),
            buttonBuilder(buttonNumber = 2, backgroundColor: Colors.orange),
            buttonBuilder(buttonNumber = 3, backgroundColor: Colors.yellow),
            buttonBuilder(buttonNumber = 4, backgroundColor: Colors.green),
            buttonBuilder(buttonNumber = 5, backgroundColor: Colors.teal),
            buttonBuilder(buttonNumber = 6, backgroundColor: Colors.blue),
            buttonBuilder(buttonNumber = 7, backgroundColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}

/*      child: TextButton(
            onPressed: () async {
              AudioCache.instance = AudioCache(prefix: '');
              final player = AudioPlayer();
              await player.play(
                AssetSource('assets/note1.wav'),
              );
            },
            child: const Text('click meee'),
          ),
 Expanded(
              child: Container(
                //   width: 5000,
                color: Colors.orange,
                child: TextButton(
                  onPressed: () async {
                    boomBox(2);
                  },
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //  width: 5000,
                color: Colors.yellowAccent,
                child: TextButton(
                  onPressed: () async {
                    boomBox(3);
                  },
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //   width: 5000,
                color: Colors.lightGreenAccent,
                child: TextButton(
                  onPressed: () async {
                    boomBox(4);
                  },
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //   width: 5000,
                color: Colors.teal,
                child: TextButton(
                  onPressed: () async {
                    boomBox(5);
                  },
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //   width: 5000,
                color: Colors.lightBlue,
                child: TextButton(
                  onPressed: () async {
                    boomBox(6);
                  },
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //    width: 5000,
                color: Colors.purple,
                child: TextButton(
                  onPressed: () async {
                    boomBox(7);
                  },
                  child: Text(''),
                ),
              ),
            ),
 */
