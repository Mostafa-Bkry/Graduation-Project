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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(children: [
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
                height: 20,
              ),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'PoppinsBold',
                  color: Color(0xff3f414e),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(children: const [
                SizedBox(width: 25),
                Text(
                  'Register to get started',
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
                child: TextFormField(
                  validator: (value) => value == null || value.isEmpty
                      ? 'Please enter your name'
                      : null,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  autocorrect: false,
                  decoration: InputDecoration(
                      label: Row(children: const [
                        Icon(Icons.supervised_user_circle_rounded),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'User Name',
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
                height: 20,
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
                height: 20,
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
                height: 40,
              ),
              ElevatedButton(
                onPressed: () => _formKey.currentState!.validate()
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      )
                    : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please fill all'),
                      )),
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
            ]),
          ),
        ]),
      ),
    );
  }
}
