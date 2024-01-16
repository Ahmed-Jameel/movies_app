class AppConstants{
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = '11fba09df1aa899dadac892634a25875';
  static const nowPlayingMoviesPath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
}