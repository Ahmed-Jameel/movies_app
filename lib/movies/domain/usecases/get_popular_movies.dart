import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movie.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase({required this.baseMovieRepository});

  Future<Either<Failure, Iterable<MovieEntity>>> execute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
