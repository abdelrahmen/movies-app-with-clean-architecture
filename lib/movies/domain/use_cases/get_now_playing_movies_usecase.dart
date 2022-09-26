import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../../core/usecase/base_usecase.dart';
import '../../data/models/movie_model.dart';
import '../repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<MovieModel>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieModel>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}

