import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note1.wav'),
                  );
                },
                child: Text('Note1'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note2.wav'),
                  );
                },
                child: Text('Note2'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note3.wav'),
                  );
                },
                child: Text('Note3'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note4.wav'),
                  );
                },
                child: Text('Note4'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note5.wav'),
                  );
                },
                child: Text('Note5'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note6.wav'),
                  );
                },
                child: Text('Note6'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('assets/note7.wav'),
                  );
                },
                child: Text('Note7'),
              ),
            ),
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

 */
