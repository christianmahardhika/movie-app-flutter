import 'package:flutter/material.dart';

class FilmCountGreetingsWidget extends StatelessWidget {
  FilmCountGreetingsWidget(@required this.count);

  final String count;

  @override
  Widget build(BuildContext context) {
    final String data = "Today there are " + count + " films";
    return Text(data,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200));
  }
}
