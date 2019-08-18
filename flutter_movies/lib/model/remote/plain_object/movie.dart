import 'package:flutter_movies/model/remote/movie_db_contract.dart';

class Movie{
  String title = "";
  String overview = "";
  String imageUrl = "";
  String releaseDate = "";
  String voteAverage = "";

  Movie(){
    //
  }

  Movie.parameterized(String title, String overview, String releaseDate, String voteAverage, String imageUrl){
    this.title = title;
    this.overview = overview;
    this.releaseDate = releaseDate;
    this.voteAverage = voteAverage;
    this.imageUrl = imageUrl;
  }

  static Movie fromJson(Map<String, dynamic> movieJson){
    Movie movie = Movie();

    movie.title = movieJson["title"];
    movie.voteAverage = movieJson["vote_average"].toString();
    movie.imageUrl = MoviesContract.POSTER_URL + "/" + movieJson["poster_path"];
    movie.overview = movieJson["overview"];
    movie.releaseDate = movieJson["release_date"].toString();

    return movie;
  }
}