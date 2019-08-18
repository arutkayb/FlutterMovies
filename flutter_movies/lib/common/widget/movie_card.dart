import 'package:flutter/material.dart';
import 'package:flutter_movies/model/remote/plain_object/movie.dart';

class MovieCard extends StatelessWidget {
  Movie _movie;

  MovieCard(Movie movie) {
    _movie = movie;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: EdgeInsets.all(7.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Center(
                    child: Image.network(
                      _movie.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "-Release: " + _movie.releaseDate,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "-Title: " + _movie.title,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "-Overview: " + _movie.overview,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
                Text(
                  "-Average Vote: " + _movie.voteAverage,
                  style: Theme.of(context).textTheme.body1,
                ),
              ]),
        ),
      ),
    );
  }
}
