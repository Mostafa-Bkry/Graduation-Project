import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:path/path.dart';

import '../nav_and_drawer/bottom_nav_bar.dart';
import '../nav_and_drawer/my_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;

  Future picImage(ImageSource source, BuildContext context) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      await Navigator.of(context)
          .pushReplacementNamed('/accept_photo', arguments: this.image);

      //print(this.image);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

/*
  Future picImage(ImageSource source, BuildContext context) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      // final imageTemp = File(image.path);
      // setState(() => this.image = imageTemp);
      final imageperm = await saveImagePermanently(image.path);
      setState(() => this.image = imageperm);
      Navigator.of(context).pushReplacementNamed('/accept_photo');

      //print(this.image);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }
  */

  // Future picImageByGallery() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image == null) return;
  //     final imageTemp = File(image.path);
  //     setState(() => this.image = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }

  // Future picImageByCamera() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //     if (image == null) return;
  //     final imageTemp = File(image.path);
  //     setState(() => this.image = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Choose Your Sick Plant',
          style: TextStyle(
              letterSpacing: 2,
              shadows: [
                Shadow(color: Colors.white, blurRadius: 15),
              ],
              fontSize: 25),
        ),
        backgroundColor: const Color(0xff3eb489),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 210, childAspectRatio: 1.0),
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/potato.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Potato',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/tomato.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Tomato',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pepper.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Pepper',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/corn.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Corn',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/apple.png'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Apple',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/strawberry.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    elevation: 6.0,
                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Center(
                          child: Text(
                            'Choose How To Pick Your Image',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.camera, context),
                          icon: Image.asset('assets/images/camera.png'),
                          iconSize: 65,
                        ),
                        IconButton(
                          splashColor: Colors.black,
                          onPressed: () =>
                              picImage(ImageSource.gallery, context),
                          icon: Image.asset('assets/images/gallery.png'),
                          iconSize: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Strawberry',
                        style: TextStyle(
                            letterSpacing: 2,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 15),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 255, 253, 253)),
                      ),
                    ]),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar.convexBar(context),
    );
  }

  // //Manage Icons of bottom navigation bar
  // void clickedIcon(int i, BuildContext context) {
  //   if (i == 0) {
  //     //Navigator.of(context).pushReplacementNamed('/home');
  //   } else if (i == 1) {
  //     Navigator.of(context).pushReplacementNamed('/analysis_result');
  //   } else if (i == 2) {
  //     Navigator.of(context).pushReplacementNamed('/history');
  //   } else {
  //     Navigator.of(context).pushReplacementNamed('/edit_profile');
  //   }
  // }
}



/*
Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/potato.jpg'),
                      fit: BoxFit.cover)),
            ),
*/




/*
const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'PoppinsBold',
              color: Color(0xff3f414e),
            ),
          ),
          */

/*
IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.home,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.delivery_dining_sharp,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.card_giftcard,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.feedback_rounded,
            size: 35,
          ),
        )
        */


/*
BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: 'Go To Home',
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  const Icon(Icons.message),
                  const Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Icon(
                      Icons.brightness_1,
                      size: 8.0,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              tooltip: 'Messages',
              label: 'Messages',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              tooltip: 'Profile',
              label: 'Profile',
            ),
          ],
          currentIndex: 1,
        ),
        */