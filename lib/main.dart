import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const darkPink = Color(0xFF50102F);
    const mediumPink = Color(0xFF761B49);
    const lightPink = Color(0xFFD86A9D);

    return MaterialApp(
      title: 'Movie Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: darkPink,
        colorScheme: ColorScheme.fromSeed(
          seedColor: lightPink,
          brightness: Brightness.dark,
          surface: mediumPink,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: mediumPink,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        cardColor: mediumPink,
      ),
      home: const HomePage(),
    );
  }
}
