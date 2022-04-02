import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void move() {
    Navigator.of(context).pushReplacementNamed('/onBoarding');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: ElevatedButton(onPressed: move, child: const Text('Back')),
    );
  }
}
