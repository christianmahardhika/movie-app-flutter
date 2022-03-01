import 'package:flutter/material.dart';

class UserAvatarWidget extends StatelessWidget {
  UserAvatarWidget(this.image);

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: NetworkImage(image),
      backgroundColor: Colors.deepOrangeAccent,
    );
  }
}
