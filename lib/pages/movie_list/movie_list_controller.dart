import 'package:movie_app/data/movie_api.dart';
import 'package:movie_app/service_locator.dart';

class MovieListController {
  final api = getIt<MovieApi>();

  void init() {
    getMovies();
  }

  void getMovies() {
    var result = api.getMovies();
    // Adicione qualquer manipulação do resultado aqui
  }
}
