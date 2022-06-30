import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black38,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(70),
      ),
      elevation: 50,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 5,
                end: 5,
                top: 30,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.amber[100],
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'My Account',
                    style: TextStyle(
                      letterSpacing: 5,
                      shadows: [
                        Shadow(color: Colors.white, blurRadius: 15),
                      ],
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 5,
                end: 5,
                top: 30,
                bottom: 10,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Zoro.gif'),
                radius: 70,
              ),
            ),
            const Divider(
              height: 15,
              color: Colors.white,
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            const SizedBox(height: 40),
            AspectRatio(
              aspectRatio: 1.9 / 1.6,
              child: Card(
                color: const Color.fromARGB(255, 194, 6, 6),
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 50,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'User Name',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 20),
                        IconButton(
                          highlightColor: Colors.white,
                          color: Colors.white,
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed('/login'),
                          icon: const Icon(
                            Icons.logout_rounded,
                            size: 40,
                          ),
                        ),
                        const Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
