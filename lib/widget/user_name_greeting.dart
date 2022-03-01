import 'package:flutter/material.dart';

class UserNameGreetingsWidget extends StatelessWidget {
  UserNameGreetingsWidget(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    final String data = "Hello " + name;
    return Text(data);
  }
}
