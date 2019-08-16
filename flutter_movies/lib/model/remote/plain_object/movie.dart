class Movie{
  String title = "";
  String overview = "";
  String imageUrl = "";
  String releaseDate = "";
  String voteAverage = "";

  Movie(){
    //
  }

  static Movie fromJson(Map<String, dynamic> movieJson){
    Movie movie = Movie();

    movie.title = movieJson["title"];
    movie.voteAverage = movieJson["vote_average"].toString();
    movie.imageUrl = movieJson["poster_path"];
    movie.overview = movieJson["overview"];
    movie.releaseDate = movieJson["release_date"].toString();


    return movie;
  }
}