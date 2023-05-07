import 'package:netflix/Infrastructure/api_key.dart';
import 'package:netflix/core/strings.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apikey";
  static const search = " $kBaseUrl/search/movie?api_key=$apikey";
  static const search2 =
      "$kBaseUrl/search/movie?api_key=$apikey&language=en-US&query=spiderman&page=1&include_adult=false";
  static const hotAndNewMovie =
      '$kBaseUrl/discover/movie?api_key=$apikey&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate';
  static const hotAndNewTv =
      '$kBaseUrl/discover/tv?api_key=$apikey&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate';

  static const hotAndNewMovie2 =
      "$kBaseUrl/discover/movie?api_key=$apikey&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate#";
}
