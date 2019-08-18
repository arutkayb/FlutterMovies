import 'package:flutter/material.dart';
import 'module/list_movies.dart';
import 'common/widget/movie_card.dart';
import 'model/remote/plain_object/movie.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movies',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 24.0),
          body1: TextStyle(fontSize: 14.0, color: Colors.black),
          body2: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Movies'),
        ),
        body: ListMovies(),
      ),

    );
  }
}
