import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /*
  void moveToRegister() {
    Navigator.of(context).pushReplacementNamed('/onBoarding');
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Column(children: [
            const SizedBox(
              height: 10,
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
            Row(children: const [
              SizedBox(width: 25),
              Text(
                'login to continue',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoBold',
                  color: Color(0xff030303),
                  letterSpacing: 0.12,
                ),
              ),
            ]),
            const SizedBox(
              height: 52,
            ),
            SizedBox(
              width: 374,
              height: 63,
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                    label: Row(children: const [
                      Icon(Icons.mail_rounded),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Email address',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'PoppinsLight',
                          color: Color(0xffa1a4b2),
                          letterSpacing: 0.12,
                        ),
                      ),
                    ]),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 238, 239, 247)),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            SizedBox(
              width: 374,
              height: 63,
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                    label: Row(children: const [
                      Icon(Icons.lock),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'PoppinsLight',
                          color: Color(0xffa1a4b2),
                          letterSpacing: 0.12,
                        ),
                      ),
                    ]),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 238, 239, 247)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => print('object'),
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PoppinsBold',
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(347, 63)),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff27554e),
                  )),
            ),
            const SizedBox(
              height: 23,
            ),
            Row(children: [
              const SizedBox(
                width: 25,
              ),
              const Text(
                'Don\'t have any account?',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoBold',
                  letterSpacing: 0.12,
                  color: Colors.black,
                ),
              ),
              RawMaterialButton(
                onPressed: () => print('object'),
                elevation: 2.0,
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'RobotoBold',
                    letterSpacing: 0.12,
                    color: Color(0xff719552),
                  ),
                ),
                shape: const StadiumBorder(),
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}
