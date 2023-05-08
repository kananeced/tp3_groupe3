import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/home/home.dart';
import 'package:hi_smart_home/Sreens/settings/edit_profile.dart';
import 'package:hi_smart_home/Sreens/settings/member.dart';

class Settings extends StatefulWidget {
  final String routeName = "/Settings";
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo/crepiscule.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        const Color.fromARGB(185, 3, 0, 49),
                        const Color.fromARGB(239, 4, 0, 58).withAlpha(5)
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width - 70,
                              top: 30),
                          child: IconButton(
                              alignment: Alignment.topRight,
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, const Home().routeName);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'CoolCeda CoolCeda',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            card(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, const EditProfil().routeName);
                },
                icon: Icons.edit,
                text: 'Edit Profile',
                textcolor: Colors.white.withOpacity(0.8)),
            const SizedBox(
              height: 15,
            ),
            card(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, const Member().routeName);
                },
                icon: Icons.person,
                text: 'Members',
                textcolor: Colors.white.withOpacity(0.8)),
            const SizedBox(
              height: 15,
            ),
            card(
                icon: Icons.settings,
                text: 'Settings',
                textcolor: Colors.white.withOpacity(0.8)),
            const SizedBox(
              height: 50,
            ),
            card(
                icon: Icons.chat_sharp,
                text: 'Term of use',
                textcolor: Colors.white.withOpacity(0.8)),
            const SizedBox(
              height: 15,
            ),
            card(
                icon: Icons.send_outlined,
                text: 'Contact',
                textcolor: Colors.white.withOpacity(0.8)),
            const SizedBox(
              height: 50,
            ),
            card(
                icon: Icons.logout,
                text: 'Sign Out',
                textcolor:
                    const Color.fromARGB(255, 223, 100, 100).withOpacity(0.8)),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Version 1.1',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(87, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget card({
    IconData? icon,
    String? text,
    Color? textcolor,
    Function()? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(68, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: textcolor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
