import 'package:flutter/material.dart';
import 'package:learnascent_lms/screens/Login/signup_screen.dart';
import 'package:learnascent_lms/screens/Login/login_screen.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff4e587e),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 320,
                  width: 420,
                  decoration: const BoxDecoration(
                    color: Color(0xff0c195c),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/HorizontalLogo.png",
                        height: 250,
                        width: 400,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 55,
                  width: 180,
                  decoration: const BoxDecoration(
                      color: Color(0xff252f65),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 55,
                  width: 180,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(248, 248, 180, 50),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
