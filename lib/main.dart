import 'package:flutter/material.dart';
import 'package:project/pages/accepting_photo.dart';
import 'package:project/pages/analysis.dart';
import 'package:project/pages/edit_profile.dart';
import 'package:project/pages/history.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/on_boarding.dart';
import 'package:project/pages/loading.dart';
import 'package:project/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const LoadingPage(),
        '/home': (_) => const MyHomePage(),
        '/onBoarding': (_) => const OnBoarding(),
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
        '/edit_profile': (_) => const EditProfilePage(),
        '/accept_photo': (_) => const AcceptPhoto(),
        '/analysis_result': (_) => const AnalysisResult(),
        '/history': (_) => const History(),
      },
    );
  }
}
