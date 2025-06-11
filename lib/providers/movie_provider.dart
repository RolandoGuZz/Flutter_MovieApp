import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:movie_app/models/models.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> popularMovies = [];
  List<Movie> nowPlayingMovies = [];
  final urlm = 'api.themoviedb.org';
  final apiKey = '9e3311ec1f57418cb454df1bde326ff2';

  MovieProvider() {
    getMoviesByPopular();
    getMoviesByNowPlaying();
  }

  Future<String> getPopularMovies() async {
    final url = Uri.https(urlm, '/3/movie/popular', {'api_key': apiKey});
    var response = await http.get(url);
    return response.body;
  }

  void getMoviesByPopular() async {
    final resp = await getPopularMovies();
    final data = convert.jsonDecode(resp) as Map<String, dynamic>;
    final popularResponse = MovieResponse.fromJson(data);
    popularMovies = popularResponse.results;
  }

  Future<String> getNowPlaying() async {
    final url = Uri.https(urlm, '/3/movie/now_playing', {'api_key': apiKey});
    final response = await http.get(url);
    return response.body;
  }

  void getMoviesByNowPlaying() async {
    final resp = await getNowPlaying();
    final data = convert.jsonDecode(resp) as Map<String, dynamic>;
    final nowPlayingResponse = MovieResponse.fromJson(data);
    nowPlayingMovies = nowPlayingResponse.results;
  }
}
