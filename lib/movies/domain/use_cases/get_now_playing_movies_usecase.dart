import 'package:dartz/dartz.dart';
import 'package:entertain_me/movies/data/models/movie_model.dart';
import 'package:entertain_me/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<MovieModel>>> execute() async{
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}