import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/accueil.dart';
import 'package:hi_smart_home/Sreens/auth/login.dart';
import 'package:hi_smart_home/Sreens/auth/sign_up.dart';
import 'package:hi_smart_home/Sreens/settings/delete_member.dart';
import 'package:hi_smart_home/Sreens/settings/edit_profile.dart';
import 'package:hi_smart_home/Sreens/settings/member.dart';
import 'package:hi_smart_home/Sreens/settings/new_member.dart';
import 'package:hi_smart_home/Sreens/settings/settings.dart';

import '../Sreens/home/home.dart';

class HiSmart extends StatelessWidget {
  const HiSmart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hi Smart Home',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(185, 3, 0, 49),
      ),
      home: const Home(),
      routes: {
        const Accueil().routeName: (context) => const Accueil(),
        const SignUp().routeName: (context) => const SignUp(),
        const Login().routeName: (context) => const Login(),
        const Home().routeName: (context) => const Home(),
        const Settings().routeName: (context) => const Settings(),
        const EditProfil().routeName: (context) => const EditProfil(),
        const Member().routeName: (context) => const Member(),
        const NewMember().routeName: (context) => const NewMember(),
        const DeleteMember().routeName: (context) => const DeleteMember(),
      },
    );
  }
}
