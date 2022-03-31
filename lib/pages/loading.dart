import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/firstScreen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: const [
              SizedBox(
                height: 500,
              ),
              SpinKitCircle(
                color: Colors.green,
              ),
            ],
          )),
    );
  }
}
