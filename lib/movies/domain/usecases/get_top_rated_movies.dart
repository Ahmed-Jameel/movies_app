import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movie.dart';

class GetToRatedMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetToRatedMoviesUseCase({required this.baseMovieRepository});

  Future<Either<Failure, Iterable<MovieEntity>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
