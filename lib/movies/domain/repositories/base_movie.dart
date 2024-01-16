import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

abstract class BaseMovieRepository{

  Future<Either<Failure, Iterable<MovieEntity>>> getNowPlayingMovies();
  Future<Either<Failure, Iterable<MovieEntity>>> getPopularMovies();
  Future<Either<Failure, Iterable<MovieEntity>>> getTopRatedMovies();
}