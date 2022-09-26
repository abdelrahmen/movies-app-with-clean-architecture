// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:entertain_me/core/error/failure.dart';
import 'package:entertain_me/core/usecase/base_usecase.dart';
import 'package:entertain_me/movies/domain/entities/movie_details.dart';
import 'package:entertain_me/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails();
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters(this.movieId);

  @override
  List<Object> get props => [movieId];
}
