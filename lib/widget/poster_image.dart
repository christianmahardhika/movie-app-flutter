import 'package:flutter/material.dart';

class PosterImageWidget extends StatelessWidget {
  PosterImageWidget(this.item);

  final String item;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.4;
    final double width = MediaQuery.of(context).size.width * 0.7;
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.network(
                item,
                fit: BoxFit.cover,
                height: height,
                width: width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
