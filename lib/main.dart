import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: Page(),
      ),
    );

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  final player = AudioCache();
  Expanded buildExpanded(MaterialColor c, int i) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          player.play('note$i.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildExpanded(Colors.red, 1),
        buildExpanded(Colors.orange, 2),
        buildExpanded(Colors.yellow, 3),
        buildExpanded(Colors.green, 4),
        buildExpanded(Colors.blue, 5),
        buildExpanded(Colors.purple, 6),
      ],
    );
  }
}
