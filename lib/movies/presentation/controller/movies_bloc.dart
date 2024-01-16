import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_event.dart';
import 'package:movies_app/movies/presentation/controller/movies_state.dart';

import '../../data/datasources/movie_remote.dart';
import '../../data/repositories/movies.dart';
import '../../domain/repositories/base_movie.dart';
import '../../domain/usecases/get_now_playing_movies.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState>{
  ///Implementing super i this way as we need to fire loading State at the beginning
  MoviesBloc(): super(const MoviesState()){
    ///on is a method that takes event 'GetNowPlayingMoviesEvent'
    ///emit => It tells UI that I have a new state (refreshes the screen)
    on<GetNowPlayingMoviesEvent>((event, emit) async {

      BaseMovieRemoteDataSource baseMovieRemoteDataSource =
      MovieRemoteDataSource();
      BaseMovieRepository baseMovieRepository =
      MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
      final result = await GetNowPlayingMoviesUseCase(
          baseMovieRepository: baseMovieRepository)
          .execute();
      print(result);
    });
  }

}