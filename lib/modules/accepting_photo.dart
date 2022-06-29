import 'package:flutter/material.dart';

class AcceptPhoto extends StatelessWidget {
  const AcceptPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic image = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'The Selected Photo',
          style: TextStyle(
              letterSpacing: 2,
              shadows: [
                Shadow(color: Colors.white, blurRadius: 15),
              ],
              fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed('/home'),
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 35,
          ),
        ),
        backgroundColor: const Color(0xff3eb489),
      ),
      body: image != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  child: Image.file(image),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(347, 63)),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff3eb489),
                    ),
                  ),
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed('/analysis_result'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.verified_sharp,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Analyse',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'PoppinsBold',
                          letterSpacing: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const FlutterLogo(size: 200),
    );
  }
}
