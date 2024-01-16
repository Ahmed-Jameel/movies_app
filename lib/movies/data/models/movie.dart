import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.overView,
    required super.title,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        backdropPath: json['backdrop_path'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        id: json['id'],
        overView: json['overview'],
        title: json['title'],
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date']);
  }
}
