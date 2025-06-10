import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:movie_app/models/models.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> popularMovies = [];
  List<Movie> nowPlayingMovies = [];
  final urlm = 'api.themoviedb.org';
  final segmento = '/3/movie/popular';
  final apiKey = '9e3311ec1f57418cb454df1bde326ff2';

  MovieProvider() {
    getMoviesByPopular();
  }
  //https://api.themoviedb.org/3/movie/popular?api_key=9e3311ec1f57418cb454df1bde326ff2
  Future<String> getPopularMovies({String? seg}) async {
    final url = Uri.https(urlm, segmento, {'api_key': apiKey});
    var response = await http.get(url);
    return response.body;
  }

  void getMoviesByPopular() async {
    final resp = await getPopularMovies();
    final data = convert.jsonDecode(resp) as Map<String, dynamic>;
    final popularResponse = MovieResponse.fromJson(data);
    popularMovies = popularResponse.results;
  }
}
