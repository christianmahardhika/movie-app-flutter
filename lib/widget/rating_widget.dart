import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  RatingWidget(@required this.rating);

  final String rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.star_border_outlined,
            color: Colors.red,
          ),
          Text(
            " " + rating + " ",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Text(
            " IMDB",
            style: TextStyle(color: Colors.white, fontSize: 8.0),
          ),
        ],
      ),
    );
  }
}
