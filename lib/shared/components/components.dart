import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Rect> {
  final Rect rect;
  bool reclip;
  MyClipper({
    required this.rect,
    required this.reclip,
  });

  @override
  getClip(Size size) {
    return rect;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return reclip;
  }
}

Widget commonUsedButton({
  required Function() function,
  double elevation = 5.0,
  Color fillColor = const Color(0xff3eb489),
  String text = '>',
  double fontSize = 40,
  String fontFamily = 'RobotoBold',
  double letterSpacing = 1.5,
  Color textColor = Colors.white,
  EdgeInsetsGeometry padding = const EdgeInsets.all(9.0),
  ShapeBorder shape = const StadiumBorder(),
  BoxConstraints constraints = const BoxConstraints(minWidth: 142),
}) {
  return RawMaterialButton(
    onPressed: function,
    elevation: elevation,
    fillColor: fillColor,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        color: textColor,
      ),
    ),
    padding: padding,
    constraints: constraints,
    shape: shape,
  );
}

Widget commonTextButton({
  required Function() function,
  required String text,
  double fontSize = 24,
  double letterSpacing = 0.12,
  String fontFamily = 'RobotoBold',
  Color color = const Color(0xff3eb489),
}) {
  return TextButton(
    onPressed: function,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        color: color,
      ),
    ),
  );
}

Widget plantCards({
  required BuildContext context,
  required String image,
  required Function() pickByCamera,
  required Function() pickFromGallery,
  required String childText,
}) {
  return Card(
    clipBehavior: Clip.hardEdge,
    elevation: 20,
    margin: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: RawMaterialButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => Dialog(
            elevation: 6.0,
            backgroundColor: const Color.fromARGB(200, 255, 255, 255),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                  onPressed: pickByCamera,
                  icon: Image.asset('assets/images/camera.png'),
                  iconSize: 65,
                ),
                IconButton(
                  splashColor: Colors.black,
                  onPressed: pickFromGallery,
                  icon: Image.asset('assets/images/gallery.png'),
                  iconSize: 60,
                ),
              ],
            ),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            childText,
            style: const TextStyle(
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
  );
}

Widget commonTextField({
  required TextEditingController controller,
  required String? Function(String? value)? validatorFunction,
  required TextInputType inputType,
  required String labelText,
  TextStyle lableStyle = const TextStyle(fontSize: 18),
  required Widget prefixIcon,
  TextInputAction textInputAction = TextInputAction.next,
  bool isFilled = false,
  Color fillColor = const Color.fromARGB(255, 238, 239, 247),
  bool isObsecured = false,
  Widget? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      validator: validatorFunction,
      keyboardType: inputType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: lableStyle,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
        filled: isFilled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObsecured,
    );


// TextFormField(
//                     controller: _controllerForUserName,
//                     validator: (value) => value == null || value.isEmpty
//                         ? 'Please enter your name'
//                         : null,
//                     keyboardType: TextInputType.text,
//                     textInputAction: TextInputAction.next,
//                     autocorrect: false,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           onPressed: () => _controllerForUserName.clear(),
//                           icon: const Icon(
//                             Icons.clear,
//                           ),
//                         ),
//                         label: Row(children: const [
//                           Icon(Icons.supervised_user_circle_rounded),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             'User Name',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontFamily: 'PoppinsLight',
//                               color: Color(0xffa1a4b2),
//                               letterSpacing: 0.12,
//                             ),
//                           ),
//                         ]),
//                         border: const OutlineInputBorder(),
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 238, 239, 247)),
//                   ),

// TextFormField(
//                     controller: _emailController,
//                     validator: (value) => value == null || value.isEmpty
//                         ? 'Please enter your name'
//                         : null,
//                     keyboardType: TextInputType.emailAddress,
//                     textInputAction: TextInputAction.next,
//                     autocorrect: false,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           onPressed: () => _emailController.clear(),
//                           icon: const Icon(
//                             Icons.clear,
//                           ),
//                         ),
//                         label: Row(children: const [
//                           Icon(Icons.mail_rounded),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             'Email address',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontFamily: 'PoppinsLight',
//                               color: Color(0xffa1a4b2),
//                               letterSpacing: 0.12,
//                             ),
//                           ),
//                         ]),
//                         border: const OutlineInputBorder(),
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 238, 239, 247)),
//                   ),

// TextFormField(
//                     controller: _passController,
//                     validator: (value) => value == null || value.isEmpty
//                         ? 'Please enter your password'
//                         : null,
//                     obscureText: _showORnot,
//                     keyboardType: TextInputType.text,
//                     textInputAction: TextInputAction.next,
//                     autocorrect: false,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           onPressed: () => setState(() {
//                             _showORnot = !_showORnot;
//                           }),
//                           icon: Icon(
//                             _showORnot
//                                 ? Icons.visibility
//                                 : Icons.visibility_off,
//                           ),
//                         ),
//                         label: Row(children: const [
//                           Icon(Icons.lock),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             'Password',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontFamily: 'PoppinsLight',
//                               color: Color(0xffa1a4b2),
//                               letterSpacing: 0.12,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 176,
//                           ),
//                         ]),
//                         border: const OutlineInputBorder(),
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 238, 239, 247)),
//                   ),





// RawMaterialButton(
//             onPressed: () => controller.jumpToPage(2),
//             elevation: 2.0,
//             child: const Text(
//               'SKIP',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontFamily: 'RobotoBold',
//                 letterSpacing: 1.5,
//                 color: Color(0xff3eb489),
//               ),
//             ),
//             padding: const EdgeInsets.all(13.0),
//             constraints: const BoxConstraints(minWidth: 142),
//             shape: const StadiumBorder(),
//           ),



// RawMaterialButton(
//             onPressed: () => controller.nextPage(
//               duration: const Duration(milliseconds: 650),
//               curve: Curves.easeInOut,
//             ),
//             elevation: 5.0,
//             fillColor: const Color(0xff3eb489),
//             child: const Text(
//               '    >    ',
//               style: TextStyle(
//                 fontSize: 40,
//                 fontFamily: 'RobotoBold',
//                 letterSpacing: 1.5,
//                 color: Colors.white,
//               ),
//             ),
//             padding: const EdgeInsets.all(9.0),
//             //constraints: const BoxConstraints(minWidth: 142),
//             shape: const StadiumBorder(),
//           ),


// RawMaterialButton(
//         onPressed: () => Navigator.of(context).pushReplacementNamed('/login'),
//         elevation: 5.0,
//         fillColor: const Color(0xff3eb489),
//         child: const Text(
//           'Get Started',
//           style: TextStyle(
//             fontSize: 23,
//             fontFamily: 'RobotoBold',
//             letterSpacing: 1.5,
//             color: Colors.white,
//           ),
//         ),
//         padding: const EdgeInsets.all(20.0),
//         constraints: const BoxConstraints(minWidth: 244),
//         shape: const StadiumBorder(),
//       ),



// class MyClipperOne extends CustomClipper<Rect> {
//   @override
//   getClip(Size size) {
//     return const Rect.fromLTRB(-50, 0, 500, 480);
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     return true;
//   }
// }

// //Second specifications for Clipper of the second onboarding
// class MyClipperTwo extends CustomClipper<Rect> {
//   @override
//   getClip(Size size) {
//     return const Rect.fromLTRB(0, 0, 600, 500);
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     return true;
//   }
// }

// //Third specifications for Clipper of the third onboarding
// class MyClipperThree extends CustomClipper<Rect> {
//   @override
//   getClip(Size size) {
//     return const Rect.fromLTRB(-30, -180, 490, 490);
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     return true;
//   }
// }



// RawMaterialButton(
//                     onPressed: () => _formKey.currentState!.validate()
//                         ? Navigator.of(context).pushReplacementNamed('/home')
//                         : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             duration: const Duration(seconds: 1),
//                             content: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   Text(
//                                     'Please fill all',
//                                     style: TextStyle(
//                                       fontSize: 17,
//                                       fontFamily: 'PoppinsBold',
//                                       letterSpacing: 1.5,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ]),
//                           )),
//                     elevation: 2.0,
//                     fillColor: const Color(0xff3eb489),
//                     child: const Text(
//                       'LOG IN   >',
//                       style: TextStyle(
//                         fontSize: 23,
//                         fontFamily: 'RobotoBold',
//                         letterSpacing: 1.5,
//                         color: Colors.white,
//                       ),
//                     ),
//                     padding: const EdgeInsets.all(15.0),
//                     constraints: const BoxConstraints(minWidth: 200),
//                     shape: const StadiumBorder(),
//                   ),


// RawMaterialButton(
//                     onPressed: () => _formKey.currentState!.validate()
//                         ? ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('Processing Data')),
//                           )
//                         : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             duration: const Duration(seconds: 1),
//                             content: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   Text(
//                                     'Please fill all',
//                                     style: TextStyle(
//                                       fontSize: 17,
//                                       fontFamily: 'PoppinsBold',
//                                       letterSpacing: 1.5,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ]),
//                           )),
//                     elevation: 2.0,
//                     fillColor: const Color(0xff3eb489),
//                     child: const Text(
//                       'SIGN UP   >',
//                       style: TextStyle(
//                         fontSize: 23,
//                         fontFamily: 'RobotoBold',
//                         letterSpacing: 1.5,
//                         color: Colors.white,
//                       ),
//                     ),
//                     padding: const EdgeInsets.all(15.0),
//                     constraints: const BoxConstraints(minWidth: 200),
//                     shape: const StadiumBorder(),
//                   ),


// TextButton(
//                   onPressed: () =>
//                       Navigator.of(context).pushReplacementNamed('/register'),
//                   //elevation: 2.0,
//                   child: const Text(
//                     'Sign up',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'RobotoBold',
//                       letterSpacing: 0.12,
//                       color: Color(0xff3eb489),
//                     ),
//                   ),
//                   //shape: const StadiumBorder(),
//                 ),


// TextButton(
//                   onPressed: () =>
//                       Navigator.of(context).pushReplacementNamed('/login'),
//                   child: const Text(
//                     'Login',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'RobotoBold',
//                       letterSpacing: 0.12,
//                       color: Color(0xff3eb489),
//                     ),
//                   ),
//                 ),




//  Card(
//             clipBehavior: Clip.hardEdge,
//             elevation: 20,
//             margin: const EdgeInsets.all(15.0),
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/potato.jpg'),
//                     fit: BoxFit.cover),
//               ),
//               child: RawMaterialButton(
//                 onPressed: () => showDialog(
//                   context: context,
//                   builder: (_) => Dialog(
//                     elevation: 6.0,
//                     backgroundColor: const Color.fromARGB(200, 255, 255, 255),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const SizedBox(
//                           height: 22,
//                         ),
//                         const Center(
//                           child: Text(
//                             'Choose How To Pick Your Image',
//                             style: TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black87),
//                           ),
//                         ),
//                         IconButton(
//                           splashColor: Colors.black,
//                           onPressed: () =>
//                               picImage(ImageSource.camera, context),
//                           icon: Image.asset('assets/images/camera.png'),
//                           iconSize: 65,
//                         ),
//                         IconButton(
//                           splashColor: Colors.black,
//                           onPressed: () =>
//                               picImage(ImageSource.gallery, context),
//                           icon: Image.asset('assets/images/gallery.png'),
//                           iconSize: 60,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: const [
//                       Text(
//                         'Potato',
//                         style: TextStyle(
//                             letterSpacing: 2,
//                             shadows: [
//                               Shadow(color: Colors.white, blurRadius: 15),
//                             ],
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(225, 255, 253, 253)),
//                       ),
//                     ]),
//               ),
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
