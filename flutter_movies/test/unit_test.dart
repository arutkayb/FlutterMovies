// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:test/test.dart';
import 'package:flutter_movies/model/remote/movie_db.dart';
import 'package:flutter_movies/model/remote/plain_object/movie.dart';

void main() {
  test('Get movies from moviedb', () async {
    MovieDb movieDb = MovieDb();
    Future<List<Movie>> movies = movieDb.getPopularMovies();
    movies.then((List<Movie> m) {
      expect(true, m.length > 0);
    });
  });
}
