import 'package:flutter/material.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
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
