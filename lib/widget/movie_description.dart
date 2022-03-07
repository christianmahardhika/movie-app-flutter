import 'package:flutter/material.dart';

class MovieDescriptionWidget extends StatelessWidget {
  MovieDescriptionWidget(this.description);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Story Line",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 11,
              ),
            ),
          )
        ],
      ),
    );
  }
}
