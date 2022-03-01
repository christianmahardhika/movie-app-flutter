import 'package:flutter/material.dart';

class FilmCountGreetingsWidget extends StatelessWidget {
  FilmCountGreetingsWidget(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    final String data = "Today there are " + name + " films";
    return Text(data,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200));
  }
}
