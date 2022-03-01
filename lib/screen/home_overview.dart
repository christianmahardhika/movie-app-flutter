import 'package:flutter/material.dart';
import 'package:movie_app/widget/common/MovieAppColor.dart';

class HomeOverviewScreen extends StatelessWidget {
  const HomeOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                MovieAppColor.PurplePrimary,
                MovieAppColor.PurpleSecondary,
              ],
            ),
          ),
          child: Center(
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
