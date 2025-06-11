import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/show_data_movie.dart';

class CustomListView extends StatelessWidget {
  final List<Movie> movies;
  const CustomListView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Now Playing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            itemCount: movies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap:
                    () => Navigator.pushNamed(
                      context,
                      'details',
                      arguments: movies[i],
                    ),
                child: Container(
                  width: 120,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  child: ShowDataMovie(movies: movies, index: i,),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
