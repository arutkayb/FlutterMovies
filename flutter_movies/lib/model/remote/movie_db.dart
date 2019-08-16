import 'package:http/http.dart' as http;
import 'movie_db_contract.dart' as contract;
import 'plain_object/movie.dart';
import 'package:flutter_movies/common/util/movie_util.dart';
import 'dart:convert';

class MovieDb {
  MovieDb() {
    //Constructor
  }

  Future<List<Movie>> getPopularMovies({int page = 1}) async {
    List<Movie> movies;
    String pageNum = page.toString();
    Uri uri;

    try {
      uri = new Uri.http(
        contract.MoviesContract.MOVIES_BASE_URL,
        contract.MoviesContract.MOVIES_PATH + contract.MoviesContract.POPULAR_MOVIES,
        {
          contract.MoviesContract.QUERY_API_KEY: contract.MoviesContract.MOVIE_DB_API_KEY,
          contract.MoviesContract.QUERY_PAGE: pageNum,
        },
      );

      var response = await http.get(uri.toString());
      Map<String, dynamic> responseBody = json.decode(response.body);
      movies = MovieUtil.parseMovieList(responseBody);
    } catch (er) {
      print(er.toString());
    }

    return movies;
  }
}
