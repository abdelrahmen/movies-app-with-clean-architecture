import 'package:entertain_me/movies/data/data_source/movie_remote_data_source.dart';
import 'package:entertain_me/movies/data/repository/movies_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../domain/repository/base_movies_repository.dart';
import '../../domain/use_cases/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMoviesRepository baseMoviesRepository =
        MoviesRepository(baseMovieRemoteDataSource);
    final reuslt =
        await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
    print(reuslt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
