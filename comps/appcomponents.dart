// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:async/async.dart';

class DisplayArea extends StatefulWidget {
  @override
  DisplayAreaState createState() => DisplayAreaState();
}

const basePreset = [
  '🥰',
  '🤗',
  '💋',
  '❤',
  '💙',
  '💛',
  '🧡',
  '💞',
  '☺',
  '💘',
  '😙',
  '😉',
  '😍',
  '❣',
  '😘',
  '💖',
  '💝',
  '💕',
  '💟',
  '💌',
  '😚',
  '😊',
  '💗',
  '💓',
  '😗'
];

class DisplayAreaState extends State<DisplayArea> {
  TextEditingController texarea = TextEditingController();
  String _data = '';
  final _textplaceholder =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Ac felis donec et odio pellentesque. Rhoncus mattis rhoncus urna neque viverra justo. Nisl nunc mi ipsum faucibus vitae. Non consectetur a erat nam at lectus urna. A scelerisque purus semper eget duis at. Quis varius quam quisque id diam. Velit scelerisque in dictum non consectetur a erat. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Aliquet bibendum enim facilisis gravida neque convallis a cras semper. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu.';

  void _updateData(givendata) {
    setState(() {
      _data = givendata;
    });

    texarea.text = _data;
  }

  void update() {
    String result = '';
    var rand = Random();

    var lineCount = 32 + rand.nextInt(7);
    for (var i = 0; i < 11 * lineCount; i++) {
      var contemp = basePreset[rand.nextInt(basePreset.length)];
      result += contemp;
    }

    _updateData(result);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 80 / 100,
                height: MediaQuery.of(context).size.height * 70 / 100,
                child: TextField(
                    controller: texarea,
                    onChanged: (value) => {update()},
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    minLines: 1,
                    maxLines: 50,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: _textplaceholder,
                        hintStyle: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 18)))),
            TextButton(
                onPressed: update,
                child: const Text('Generate',
                    style: TextStyle(fontSize: 24, color: Colors.black)))
          ],
        ));
  }
}
