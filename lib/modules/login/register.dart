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
            child: Padding(
              padding: const EdgeInsets.all(13.0),
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
                    //SizedBox(width: 25),
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
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 23,
                    ),
                    child: commonTextField(
                      controller: _controllerForUserName,
                      validatorFunction: (value) =>
                          value == null || value.isEmpty
                              ? 'Please enter your name'
                              : null,
                      inputType: TextInputType.text,
                      labelText: 'User Name',
                      prefixIcon: const Icon(
                        Icons.supervised_user_circle_rounded,
                        color: Colors.black,
                      ),
                      isFilled: true,
                      suffixIcon: IconButton(
                        onPressed: () => _controllerForUserName.clear(),
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 23,
                    ),
                    child: commonTextField(
                      controller: _controllerForEmail,
                      validatorFunction: (value) =>
                          value == null || value.isEmpty
                              ? 'Please enter your e-mail'
                              : null,
                      inputType: TextInputType.emailAddress,
                      labelText: 'Email Address',
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      isFilled: true,
                      suffixIcon: IconButton(
                        onPressed: () => _controllerForEmail.clear(),
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 40,
                    ),
                    child: commonTextField(
                      controller: _controllerForPass,
                      validatorFunction: (value) =>
                          value == null || value.isEmpty
                              ? 'Please enter your password'
                              : null,
                      inputType: TextInputType.visiblePassword,
                      labelText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      isFilled: true,
                      isObsecured: _showORnot,
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          _showORnot = _showORnot ? false : true;
                        }),
                        icon: Icon(
                          _showORnot ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 35,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        commonUsedButton(
                          function: () => _formKey.currentState!.validate()
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                )
                              : ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                  duration: const Duration(seconds: 1),
                                  content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                      ],
                    ),
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
                        function: () => Navigator.of(context)
                            .pushReplacementNamed('/login'),
                        text: 'Login',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
