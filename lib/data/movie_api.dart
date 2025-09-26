import 'package:dio/dio.dart';
import 'package:movie_app/data/models/movie.dart';

class MovieApi {
  final Dio _dio = Dio(
      BaseOptions(baseUrl: 'https://apifilmes.webevolui.com/swagger/index.html')
  ); // Dio

  Future<List<Movie>> getMovies({int skip = 0, int take = 20}) async {
    var response = await _dio.get('/Filmes?skip=$skip&take=$take');
    return (response.data as List)
        .map((item) => Movie.fromJson(item))
        .toList();
  }
}
