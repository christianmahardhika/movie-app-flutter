import 'package:flutter/material.dart';
import 'package:movie_app/widget/common/MovieAppColor.dart';

class UserAvatarWidget extends StatelessWidget {
  UserAvatarWidget(this.image);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.amber,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 20.0,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
