import 'package:flutter/material.dart';
import '../common/widget/movie_card.dart';
import '../model/remote/plain_object/movie.dart';
import '../model/remote/movie_db.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//MovieCard(Movie.parameterized("test", "overview", "10.10.2019", "3.19", "http://image.tmdb.org/t/p/w342/keym7MPn1icW1wWfzMnW3HeuzWU.jpg"))
class ListMovies extends StatefulWidget {
  @override
  State createState() {
    return DynamicMovies();
  }
}

class DynamicMovies extends State<ListMovies> {
  List<Movie> _movies;
  List<MovieCard> _movieCards;

  DynamicMovies() {
    _movies = List();
    _movieCards = List();

    MovieDb().getPopularMovies().then((List<Movie> m) {
      setState(() {
        _movies.clear();
        _movieCards.clear();

        _movies.addAll(m);
        for (Movie movie in _movies) {
          _movieCards.add(MovieCard(movie));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget = Container();

    if(_movies.length > 0) {
      widget = CustomScrollView(
        slivers: <Widget>[
          SliverStaggeredGrid.countBuilder(
            crossAxisCount: 2,
            itemCount: _movieCards.length,
            itemBuilder: (BuildContext context,
                int index) => _movieCards[index],
            staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ],
      );
    }

    return widget;
  }
}
