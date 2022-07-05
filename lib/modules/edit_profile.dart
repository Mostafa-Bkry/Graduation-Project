import 'package:flutter/material.dart';
import 'package:project/modules/nav_and_drawer/bottom_nav_bar.dart';

import '../shared/components/components.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  //To Manage login Button go to ScaffoldMessenger

  final _formKey = GlobalKey<FormState>();
  final _controllerForUserName = TextEditingController();
  final _controllerForEmail = TextEditingController();

  final _controllerForPass = TextEditingController();
  bool _showORnot = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3eb489),
        leading: IconButton(
          onPressed: () {
            BottomNavBar.index = 0;
            Navigator.of(context).pushReplacementNamed('/home');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 35,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(children: [
                const SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                  child: Image.asset('assets/images/icon.png'),
                  radius: 30,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Edit your profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'PoppinsBold',
                    color: Color(0xff3f414e),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 23,
                  ),
                  child: commonTextField(
                    controller: _controllerForUserName,
                    validatorFunction: (value) => value == null || value.isEmpty
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
                    validatorFunction: (value) => value == null || value.isEmpty
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
                    bottom: 45,
                  ),
                  child: commonTextField(
                    controller: _controllerForPass,
                    validatorFunction: (value) => value == null || value.isEmpty
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
                ElevatedButton(
                  onPressed: () => _formKey.currentState!.validate()
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
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'PoppinsBold',
                      letterSpacing: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(347, 63)),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff3eb489),
                      )),
                ),
                const SizedBox(
                  height: 23,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
