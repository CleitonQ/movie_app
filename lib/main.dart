import 'package:flutter/material.dart';
import 'package:movie_app/pages/movie_list/movie_list_page.dart';
import 'package:movie_app/service_locator.dart';

void main() {
  setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF15173D),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6b86fc),
        ), // ColorScheme.dark()
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF15173D),
        ),
        useMaterial3: true, // ThemeData
      ),
      home: MovieListPage(),
    );
  }
}

