import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pwd_manager/SignupPage.dart';

void main() {
  runApp(MaterialApp(
    home: SignupPage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      colorScheme:
          ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 255, 213)),
    ),
  ));
}

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image(
//             image: AssetImage('assets/SplashScreen.jpg'),
//             fit: BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,
//           ),
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.black.withOpacity(1.0),
//                   Colors.black.withOpacity(0.80),
//                   Colors.black.withOpacity(0.70),
//                   Colors.black.withOpacity(0.50),
//                   Colors.black.withOpacity(0.30),
//                   Colors.black.withOpacity(0.10),
//                 ],
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
