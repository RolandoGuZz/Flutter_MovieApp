import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

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
              fontSize: 17,
              color: Colors.indigo,
            ),
          ),
        ),
        SizedBox(height: 50),
        SizedBox(
          height: 210,
          width: double.infinity,
          //color: Colors.amber,
          //GestureDetector
          child: ListView.builder(
            itemCount: movies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap:
                    () => Navigator.pushNamed(
                      context,
                      'details',
                      arguments: 'Movie',
                    ),
                child: Container(
                  width: 120,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          fit: BoxFit.cover,
                          width: 120,
                          height: 150,
                          placeholder: AssetImage('assets/images/loading.gif'),
                          image: NetworkImage(movies[i].getPosterPath),
                        ),
                      ),
                      Text(
                        movies[i].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
