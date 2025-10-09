import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/models/movie.dart';

class MovieDetailAboutWidget extends StatelessWidget {
  const MovieDetailAboutWidget({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                _buildIcon(Icons.calendar_month_outlined),
                Text(' Ano ${movie.year} '),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Text(
                      prettyDuration(
                        Duration(minutes: movie.duration),
                        abbreviated: true,
                        delimiter: ' ',
                        spacer: ''
                      )
                    ),
                    const Text(' | '),
                    Text(movie.gender),
                  ], // children
                ), // Row
                const SizedBox(height: 8.0),
              ], // children do Row
            ), // Row
          ], // children do Column
        ), // Column
      ), // Container
    ); // SliverToBoxAdapter
  }
  Icon _buildIcon(IconData iconData) => Icon(iconData, color: Colors.amber, size: 16,);
}
