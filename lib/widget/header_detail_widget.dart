import 'package:flutter/material.dart';
import 'package:movie_app/screen/home_overview.dart';

class HeaderDetailWidget extends StatelessWidget {
  const HeaderDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeOverviewScreen.routeName);
              },
              icon: Icon(
                Icons.arrow_circle_left_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
