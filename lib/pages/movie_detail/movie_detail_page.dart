import 'package:flutter/material.dart';
import 'package:movie_app/data/models/movie.dart';
import 'package:movie_app/pages/movie_detail/movie_detail_controller.dart';
import 'package:movie_app/widgets/progress_indicator_widget.dart';
import 'package:movie_app/service_locator.dart';
import 'package:movie_app/pages/movie_list/widgets/movie_item_widget.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  final controller = getIt.registerSingleton(MovieDetailController());

  @override
  void initState() {
    controller.init(widget.movie);
    super.initState();
  }

  @override
  void dispose() {
    getIt.unregister(instance: controller);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var movie = widget.movie;

    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<Movie>(
        initialData: widget.movie,
        stream: controller.stream,
        builder: (context, snapshot) {
          var movie = snapshot.data!;

          if (snapshot.connectionState == ConnectionState.waiting) {
           return const ProgressIndicatorWidget();
           }

          return Text(movie.name);
        },
      ),
    );
  }
}
