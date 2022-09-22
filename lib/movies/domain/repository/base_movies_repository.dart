import 'package:dartz/dartz.dart';
import 'package:entertain_me/core/error/failure.dart';
import 'package:entertain_me/movies/domain/entities/movie.dart';

import '../../data/models/movie_model.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieModel>>> getPopularMovies();

  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
}
