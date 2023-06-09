import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tf10p_0028_codigo_movieapp/models/movie_model.dart';
import 'package:tf10p_0028_codigo_movieapp/utils/constants.dart';

class APIService {
  Future<List<MovieModel>> getMovies() async {
    List<MovieModel> movies = [];
    String _url =
        "$pathProduction/discover/movie?language=en-US&page=1&api_key=$apiKey";
    Uri _uri = Uri.parse(_url);
    http.Response _response = await http.get(_uri);
    if (_response.statusCode == 200) {
      Map<String, dynamic> moviesMap = json.decode(_response.body);
      movies = moviesMap["results"]
          .map<MovieModel>((e) => MovieModel.fromJson(e))
          .toList();
      return movies;
    }
    return movies;
  }
  getMovie(int movieId) async {
    MovieModel movie;
    String _url =
        "$pathProduction/movie/$movieId?language=en-US&page=1&api_key=$apiKey";
    Uri _uri = Uri.parse(_url);
    http.Response _response = await http.get(_uri);
    if (_response.statusCode == 200) {
      Map<String, dynamic> movieMap = json.decode(_response.body);
      print(movieMap);
      // movie = moviesMap["results"]
      //     .map<MovieModel>((e) => MovieModel.fromJson(e))
      //     .toList();
      // return movie;
    }
    // return movie;
  }
}
