import 'package:flutter/material.dart';
import 'package:project/modules/accepting_photo.dart';
import 'package:project/modules/analysis.dart';
import 'package:project/modules/edit_profile.dart';
import 'package:project/modules/history.dart';
import 'package:project/layout/home.dart';
import 'package:project/modules/login/login.dart';
import 'package:project/modules/loading_onboarding/on_boarding.dart';
import 'package:project/modules/loading_onboarding/loading.dart';
import 'package:project/modules/login/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
