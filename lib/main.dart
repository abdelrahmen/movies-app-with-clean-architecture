import 'core/services/service_locator.dart';
import 'package:flutter/material.dart';

import 'movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MoviesScreen(),
    );
  }
}

