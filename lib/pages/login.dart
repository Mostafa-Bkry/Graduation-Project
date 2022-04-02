import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*
  void moveToRegister() {
    Navigator.of(context).pushReplacementNamed('/onBoarding');
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
              child: Image.asset('assets/images/icon.png'),
              radius: 30,
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'PoppinsExtraBold',
                color: Color(0xff3f414e),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(width: 15),
                Text(
                  'login to continue',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'RobotoBold',
                    color: Color(0xff030303),
                    letterSpacing: 0.12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
