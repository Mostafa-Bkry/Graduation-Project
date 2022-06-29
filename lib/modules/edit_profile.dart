import 'package:flutter/material.dart';
import 'package:project/nav_and_drawer/bottom_nav_bar.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  //To Manage login Button go to ScaffoldMessenger

  final _formKey = GlobalKey<FormState>();
  final _controllerForUserName = TextEditingController();
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
                height: 47,
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
                  controller: _controllerForPass,
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
                  textInputAction: TextInputAction.next,
                  autocorrect: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          _showORnot = !_showORnot;
                        }),
                        icon: Icon(
                          _showORnot ? Icons.visibility : Icons.visibility_off,
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
                height: 48,
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
                    minimumSize: MaterialStateProperty.all(const Size(347, 63)),
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
    );
  }
}
