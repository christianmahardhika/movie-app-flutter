import 'package:flutter/material.dart';
import 'package:movie_app/widget/common/MovieAppColor.dart';
import 'package:movie_app/widget/film_count_greeting.dart';
import 'package:movie_app/widget/search_bar.dart';
import 'package:movie_app/widget/user_avatar.dart';
import 'package:movie_app/widget/user_name_greeting.dart';

class HomeOverviewScreen extends StatelessWidget {
  const HomeOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              UserNameGreetingsWidget('Pahabol'),
              FilmCountGreetingsWidget("12")
            ]),
            UserAvatarWidget(
                "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
          ],
        ),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBarWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
