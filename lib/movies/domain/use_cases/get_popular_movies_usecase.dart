import 'package:dartz/dartz.dart';
import '../../../core/usecase/base_usecase.dart';
import '../repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';
import '../../data/models/movie_model.dart';

class GetPopularMoviesUseCase
    extends BaseUseCase<List<MovieModel>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieModel>>> call(
      NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
