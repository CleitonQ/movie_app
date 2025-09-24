import 'package:flutter/material.dart';
import 'package:movie_app/pages/movie_list/movie_list_controller.dart';
import 'package:movie_app/service_locator.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final controller = getIt<MovieListController>();

  @override
  void initState(){
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search)
          ) // IconButton
        ], // actions
      ), // AppBar
      body: ListView(
        children: [
          ListTile(
            title: Text('Filme 1'),
          ), // ListTile
          ListTile(
            title: Text('Filme 2'),
          ), // ListTile
          // Adicione outros ListTile conforme necessário
        ], // children
      ), // ListView
    ); // Scaffold
  }
}
