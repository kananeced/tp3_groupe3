import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/accueil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  init() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, const Accueil().routeName);
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo/Hi.png"),
            ),
          )),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.centerRight,
                  colors: <Color>[
                const Color.fromARGB(132, 183, 6, 214),
                const Color.fromARGB(255, 23, 0, 59).withAlpha(10),
              ])),
        ),
      ]),
    );
  }
}
