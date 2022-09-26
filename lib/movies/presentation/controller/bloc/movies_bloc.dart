import 'dart:async';
import 'package:entertain_me/core/usecase/base_usecase.dart';
import 'package:entertain_me/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:entertain_me/movies/domain/use_cases/get_top_rated_movies_usecase.dart';

import '../../../domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/enums.dart';
import '../../../domain/entities/movie.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);

    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getTopRatedMovies(event, emit) async {
    final result = await getTopRatedMoviesUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              topRatedMessage: l.message,
              topRatedState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
              topRatedMovies: r,
              topRatedState: RequestState.loaded,
            )));
  }

  FutureOr<void> _getPopularMovies(event, emit) async {
    final result = await getPopularMoviesUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              popularMessage: l.message,
              popularState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
              popularMovies: r,
              popularState: RequestState.loaded,
            )));
  }

  FutureOr<void> _getNowPlayingMovies(event, emit) async {
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
      (l) => emit(state.copyWith(
        nowPlayingMessage: l.message,
        nowPlayingState: RequestState.error,
      )),
      (r) => emit(
        state.copyWith(
          nowPlayingMovies: r,
          nowPlayingState: RequestState.loaded,
        ),
      ),
    );
  }
}
