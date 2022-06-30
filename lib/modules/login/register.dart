import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //To Manage login Button go to ScaffoldMessenger

  final _formKey = GlobalKey<FormState>();
  final _controllerForUserName = TextEditingController();
  final _controllerForEmail = TextEditingController();
  final _controllerForPass = TextEditingController();
  bool _showORnot = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    controller: _controllerForUserName,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter your name'
                        : null,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => _controllerForUserName.clear(),
                          icon: const Icon(
                            Icons.clear,
                          ),
                        ),
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
                  child: TextFormField(
                    controller: _controllerForEmail,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter your e-mail'
                        : null,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => _controllerForPass.clear(),
                          icon: const Icon(
                            Icons.clear,
                          ),
                        ),
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
                  child: TextFormField(
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter password'
                        : null,
                    keyboardType: TextInputType.text,
                    obscureText: _showORnot,
                    textInputAction: TextInputAction.done,
                    autocorrect: false,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            _showORnot = !_showORnot;
                          }),
                          icon: Icon(
                            _showORnot
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    commonUsedButton(
                      function: () => _formKey.currentState!.validate()
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            )
                          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: const Duration(seconds: 1),
                              content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Please fill all',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'PoppinsBold',
                                        letterSpacing: 1.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                            )),
                      elevation: 2.0,
                      text: 'SIGN UP   >',
                      fontSize: 23,
                      padding: const EdgeInsets.all(15.0),
                      constraints: const BoxConstraints(minWidth: 200),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Allready have account?',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'RobotoBold',
                        letterSpacing: 0.12,
                        color: Colors.black,
                      ),
                    ),
                    commonTextButton(
                      function: () =>
                          Navigator.of(context).pushReplacementNamed('/login'),
                      text: 'Login',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
