import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => const LoadingPage(),
        '/home': (_) => const Home(),
      },
    );
  }
}
