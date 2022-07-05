import 'package:flutter/material.dart';
import 'package:project/shared/components/components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //To Manage login Button go to ScaffoldMessenger

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
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
                    height: 23,
                  ),
                  const Text(
                    'Welcome Back',
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
                    height: 60,
                  ),
                  commonTextField(
                    controller: _emailController,
                    validatorFunction: (value) => value == null || value.isEmpty
                        ? 'Please enter your name'
                        : null,
                    inputType: TextInputType.emailAddress,
                    labelText: 'Email Address',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    isFilled: true,
                    suffixIcon: IconButton(
                      onPressed: () => _emailController.clear(),
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  commonTextField(
                    controller: _passController,
                    validatorFunction: (value) => value == null || value.isEmpty
                        ? 'Please enter your password'
                        : null,
                    inputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
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
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      commonUsedButton(
                        function: () => _formKey.currentState!.validate()
                            ? Navigator.of(context)
                                .pushReplacementNamed('/home')
                            : ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
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
                                    ],
                                  ),
                                ),
                              ),
                        elevation: 2.0,
                        text: 'LOG IN   >',
                        fontSize: 23,
                        padding: const EdgeInsets.all(15.0),
                        constraints: const BoxConstraints(minWidth: 200),
                      ),
                      // const SizedBox(
                      //   width: 13,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have any account?',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'RobotoBold',
                          letterSpacing: 0.12,
                          color: Colors.black,
                        ),
                      ),
                      commonTextButton(
                        function: () => Navigator.of(context)
                            .pushReplacementNamed('/register'),
                        text: 'Sign up',
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


/*
ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          )
*/


/*
ElevatedButton(
                onPressed: () => _formKey.currentState!.validate()
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      )
                    : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        padding: EdgeInsets.fromLTRB(136, 10, 136, 10),
                        content: Text(
                          'Please fill all',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'PoppinsBold',
                            letterSpacing: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      )),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PoppinsBold',
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(300, 63)),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff3eb489),
                    )),
              ),
*/