import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/sign_up.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

import 'login.dart';

//import 'package:hi_smart_home/Sreens/widget/utility.dart';

class Accueil extends StatefulWidget {
  final String routeName = '/accueil';
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 1,
                  image: AssetImage('assets/logo/appart.jpg'),
                  fit: BoxFit.fill),
              color: Color.fromARGB(31, 0, 0, 0)),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                title(
                    name: "Control your home",
                    colorText: Colors.white.withOpacity(0.7),
                    width: 30),
                const SizedBox(
                  height: 10,
                ),
                subTitle(
                    name:
                        'Control all your smart home devices and enjoy your life',
                    colorText: Colors.white.withOpacity(0.5),
                    width: 21),
                const SizedBox(
                  height: 30,
                ),
                custormBouton(context, onTap: () {
                  Navigator.pushReplacementNamed(
                      context, const SignUp().routeName);
                },
                    title: 'Get Started',
                    color: const Color.fromARGB(255, 3, 127, 230),
                    colorText: Colors.white.withOpacity(0.7)),
                const SizedBox(
                  height: 10,
                ),
                custormBouton(context,
                    onTap: () => Navigator.pushReplacementNamed(
                        context, const Login().routeName),
                    title: 'Sign In',
                    color: Colors.white,
                    colorText: const Color.fromARGB(255, 52, 129, 192)),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  // Widget subTitle({
  //   String? name,
  //   Color? colorText,
  // }) {
  //   return Text(
  //     name!,
  //     textAlign: TextAlign.center,
  //     style: TextStyle(fontSize: 21, color: colorText),
  //   );
  // }
}
