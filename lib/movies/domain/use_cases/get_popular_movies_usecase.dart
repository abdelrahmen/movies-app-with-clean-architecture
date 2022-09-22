import 'package:dartz/dartz.dart';
import 'package:entertain_me/movies/domain/entities/movie.dart';
import 'package:entertain_me/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';
import '../../data/models/movie_model.dart';

class GetPoularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPoularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<MovieModel>>> execute() async{
    return await baseMoviesRepository.getPopularMovies();
  }
}