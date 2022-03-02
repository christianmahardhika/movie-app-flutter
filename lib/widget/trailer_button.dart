import 'package:flutter/material.dart';

class TrailerButtonWidget extends StatelessWidget {
  const TrailerButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.amber,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          // Respond to button press
        },
        icon: Icon(Icons.play_circle_fill_rounded),
        label: Text('Watch the Trailer'),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
