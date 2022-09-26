import 'package:entertain_me/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:entertain_me/movies/domain/use_cases/get_top_rated_movies_usecase.dart';

import '../../movies/data/data_source/movie_remote_data_source.dart';
import '../../movies/data/repository/movies_repository.dart';
import '../../movies/domain/repository/base_movies_repository.dart';
import '../../movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void setup() {
    //data Source
    getIt.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
    //repository
    getIt.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(getIt()));
    //usecases
    getIt.registerLazySingleton<GetNowPlayingMoviesUseCase>(
        () => GetNowPlayingMoviesUseCase(getIt()));
    getIt.registerLazySingleton<GetPopularMoviesUseCase>(
        () => GetPopularMoviesUseCase(getIt()));
    getIt.registerLazySingleton<GetTopRatedMoviesUseCase>(
        () => GetTopRatedMoviesUseCase(getIt()));
  }
}
