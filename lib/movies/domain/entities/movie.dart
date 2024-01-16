import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String overView;
  final String title;
  final double voteAverage;
  final String releaseDate;

  const MovieEntity(
      {required this.backdropPath,
      required this.genreIds,
      required this.id,
      required this.overView,
      required this.title,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        overView,
        title,
        voteAverage,
        releaseDate,
      ];
}
