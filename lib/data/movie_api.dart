import 'package:dio/dio.dart';
import 'package:movie_app/data/models/movie.dart';

class MovieApi {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: 'https://apifilmes.webevolui.com'),
  ); // Dio

  Future<List<Movie>> getMovies({int skip = 0, int take = 20}) async {
    var response = await _dio.get(
      '/Filme?skip=$skip&take=$take',
    ); // Corrected path
    return (response.data as List).map((item) => Movie.fromJson(item)).toList();
  }

  Future<Movie> getMovie(int id) async {
    var response = await _dio.get('/Filme/$id'); // Corrected path

    return Movie.fromJson(response.data);
  }

  Future<void> deleteComment(int movieId, int id) async {
    await _dio.delete('/Filme/$movieId/Comentario/$id'); // Corrected path
  }
}
