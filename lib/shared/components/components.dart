import 'package:flutter/material.dart';

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