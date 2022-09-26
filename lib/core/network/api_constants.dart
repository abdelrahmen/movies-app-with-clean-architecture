class ApiConstants {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static const apiKey = "8b2bfb499753fe3c5a36a16edf05ad78";

  static const nowPlayingMoviePath = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const popularMoviePath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const topRatedMoviePath = "$baseUrl/movie/top_rated?api_key=$apiKey";
  static imageUrl(String path)=>"$baseImageUrl$path";

}