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
