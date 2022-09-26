import 'package:entertain_me/movies/domain/entities/genres.dart';
import 'package:equatable/equatable.dart';

class MovieDetails extends Equatable {
  final String backDropPath;
  final int id;
  final List<Genres> genres;
  final String overview;
  final String releaseDate;
  final int runTime;
  final String title;
  final String voteAverage;

  const MovieDetails({
    required this.backDropPath,
    required this.id,
    required this.genres,
    required this.overview,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object> get props {
    return [
      backDropPath,
      id,
      overview,
      releaseDate,
      runTime,
      title,
      voteAverage,
      genres,
    ];
  }
}
