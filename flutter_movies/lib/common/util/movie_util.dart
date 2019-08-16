import 'package:flutter_movies/model/remote/plain_object/movie.dart';

class MovieUtil{
  static List<Movie> parseMovieList(Map<String, dynamic> movieDbResponse){
    List<Movie> list = new List();

    var results = movieDbResponse["results"];

    for(Map<String, dynamic> entry in results){
      list.add(Movie.fromJson(entry));
    }

    return list;
  }
}