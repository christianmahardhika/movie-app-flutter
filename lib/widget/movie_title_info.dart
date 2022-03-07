import 'package:flutter/material.dart';

class MovieTitleInfoWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String duration;
  final String genre;
  final String parentalrating;
  final String movierating;

  const MovieTitleInfoWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.genre,
    required this.duration,
    required this.parentalrating,
    required this.movierating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Text(
                  genre,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Text(
                  duration,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Text(
                  parentalrating,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Text(
                  movierating,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
