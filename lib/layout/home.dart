import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/shared/components/components.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:path/path.dart';

import '../modules/nav_and_drawer/bottom_nav_bar.dart';
import '../modules/nav_and_drawer/my_drawer.dart';

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
          plantCards(
              context: context,
              image: 'assets/images/potato.jpg',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Potato'),
          plantCards(
              context: context,
              image: 'assets/images/tomato.jpeg',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Tomato'),
          plantCards(
              context: context,
              image: 'assets/images/pepper.jpg',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Pepper'),
          plantCards(
              context: context,
              image: 'assets/images/corn.jpeg',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Corn'),
          plantCards(
              context: context,
              image: 'assets/images/apple.png',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Apple'),
          plantCards(
              context: context,
              image: 'assets/images/strawberry.jpg',
              pickByCamera: () => picImage(ImageSource.camera, context),
              pickFromGallery: () => picImage(ImageSource.gallery, context),
              childText: 'Strawberry'),
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