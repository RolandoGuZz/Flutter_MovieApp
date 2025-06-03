import 'dart:convert';
import 'package:movie_app/models/models.dart';

class PopularMovieResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  PopularMovieResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PopularMovieResponse.fromRawJson(String str) =>
      PopularMovieResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PopularMovieResponse.fromJson(Map<String, dynamic> json) =>
      PopularMovieResponse(
        page: json["page"],
        results: List<Movie>.from(
          json["results"].map((x) => Movie.fromJson(x)),
        ),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
    "page": page,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "total_pages": totalPages,
    "total_results": totalResults,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
