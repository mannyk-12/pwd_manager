import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:pwd_manager/LoginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _ishidden = true;

  void _togglePasswordView() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/SplashScreen.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 140, 0, 255).withOpacity(0.10),
                  Color.fromARGB(255, 140, 0, 255).withOpacity(0.05),
                  Color.fromARGB(255, 132, 0, 255).withOpacity(0.01),
                  Colors.black.withOpacity(0.30),
                  Colors.black.withOpacity(0.20),
                  Colors.black.withOpacity(0.10),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up',
                            style: GoogleFonts.forum(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Opacity(
                        opacity: 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            fillColor: Color.fromARGB(255, 194, 194, 194),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Opacity(
                        opacity: 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            fillColor: Color.fromARGB(255, 194, 194, 194),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Opacity(
                        opacity: 0.8,
                        child: TextField(
                          obscureText: _ishidden,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _ishidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            fillColor: Color.fromARGB(255, 194, 194, 194),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Opacity(
                        opacity: 0.8,
                        child: TextField(
                          obscureText: _ishidden,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _ishidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            fillColor: Color.fromARGB(255, 194, 194, 194),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        print("User Registered");
                      },
                      child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                    const BottomLink(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomLink extends StatelessWidget {
  const BottomLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have account? ',
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          TextSpan(
              text: 'Login',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).push(_Route());
                }),
        ],
      ),
    );
  }
}

Route _Route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
