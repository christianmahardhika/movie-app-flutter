import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/widget/movie_description.dart';
import 'package:movie_app/widget/movie_title_info.dart';
import 'package:movie_app/widget/poster_image.dart';

import '../widget/header_detail_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  static const routeName = '/movie-detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1443827423664-eac70d49dd0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80"),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: ListView(
                    padding: EdgeInsets.all(15),
                    children: [
                      HeaderDetailWidget(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40),
                        child: PosterImageWidget(
                          "https://images.unsplash.com/photo-1443827423664-eac70d49dd0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MovieTitleInfoWidget(
                          title: "Black Widow",
                          subtitle: "Eng",
                          genre: "Action / Sci-Fi",
                          duration: "3hrs 10min",
                          parentalrating: "PG",
                          movierating: "7.4",
                        ),
                      ),
                      MovieDescriptionWidget(
                          "Natasha Romanoff, aka Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will read more...")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
