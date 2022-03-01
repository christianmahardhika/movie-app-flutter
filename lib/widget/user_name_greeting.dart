import 'package:flutter/material.dart';

class UserNameGreetings extends StatelessWidget {
  UserNameGreetings(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    final String data = "Hello" + name;
    return Text(data);
  }
}
