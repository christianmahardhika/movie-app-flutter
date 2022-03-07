import 'package:flutter/material.dart';
import 'package:movie_app/widget/common/MovieAppColor.dart';
import 'package:movie_app/widget/home_widgets/film_count_greeting.dart';
import 'package:movie_app/widget/home_widgets/movie_carousel.dart';
import 'package:movie_app/widget/home_widgets/rating_widget.dart';
import 'package:movie_app/widget/home_widgets/search_bar.dart';
import 'package:movie_app/widget/home_widgets/trailer_button.dart';
import 'package:movie_app/widget/home_widgets/user_avatar.dart';
import 'package:movie_app/widget/home_widgets/user_name_greeting.dart';

final List<String> imgList = [
  'https://images.unsplash.com/reserve/D8ijGd3CSGq4BxJ9EzTf_13976945916_fa0ce84ee3_o.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1443827423664-eac70d49dd0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeOverviewScreen extends StatelessWidget {
  const HomeOverviewScreen({Key? key}) : super(key: key);

  static const routeName = '/home-overview';
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
              child: ListView(children: [
                SearchBarWidget(),
                MovieCarouselWidget(imgList),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RatingWidget("4.5"),
                    TrailerButtonWidget(),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
