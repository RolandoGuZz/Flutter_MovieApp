import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/models/movie.dart';

class ShowDetailsMovie extends StatelessWidget {
  final Movie movie;
  const ShowDetailsMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(movie.getPosterPath, height: 400, width: double.infinity),
        SizedBox(height: 10),
        Text(
          'Titulo: ${movie.title}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 10),
        Text(
          'Fecha de Lanzamiento: ${DateFormat('dd MMMM yyyy').format(movie.releaseDate)}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 15),
        Text(movie.overview, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
