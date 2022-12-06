import 'package:watcher_movie_app/backend/network.dart';
import 'package:watcher_movie_app/constants/constants.dart';

class Load {
  Future<List> getSuggestedMovies() async {
    Network network = Network('$tmdUrl/trending/all/day?api_key=$apiKey');
    var suggestedMovies = await network.getData();
    List result = suggestedMovies['results'];

    result.forEach((dynamic movie) {
      if (movie['original_title'] == null) {
        print(movie['name']);
      } else {
        print(movie['original_title']);
      }
    });
    return result;
  }
}
