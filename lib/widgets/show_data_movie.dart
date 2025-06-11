import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/models/movie.dart';

class ShowDataMovie extends StatelessWidget {
  final List<Movie> movies;
  final int index;
  const ShowDataMovie({super.key, required this.movies, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            fit: BoxFit.cover,
            width: 120,
            height: 140,
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(movies[index].getPosterPath),
          ),
        ),
        Text(
          movies[index].title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          DateFormat('dd MMMM yyyy').format(movies[index].releaseDate),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
