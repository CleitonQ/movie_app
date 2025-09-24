import 'dart:async';

import 'package:movie_app/data/movie_api.dart';
import 'package:movie_app/service_locator.dart';
import 'package:movie_app/data/models/movie.dart';

class MovieListController {
  final api = getIt<MovieApi>();

  final _controller = StreamController<List<Movie>>();

  void init() {
    getMovies();
  }

  void getMovies() {
    var result = api.getMovies();
    // Adicione qualquer manipulação do resultado aqui
  }
}
