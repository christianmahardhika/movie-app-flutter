import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "search",
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.red),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.red),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
