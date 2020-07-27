import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const urlTrend =
    'https://api.giphy.com/v1/gifs/trending?api_key=PE6IlQgRBU9lxiQ0YOhFcLhJREUzxhP8&limit=20&rating=g';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offset = 0;

  _getGifs() async {
    http.Response response;
    if (_search == null)
      response = await http.get(urlTrend);
    else
      response = await http.get(
          'https://api.giphy.com/v1/gifs/search?api_key=PE6IlQgRBU9lxiQ0YOhFcLhJREUzxhP8&q=${_search}&limit=20&offset=${_offset}&rating=g&lang=en');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
