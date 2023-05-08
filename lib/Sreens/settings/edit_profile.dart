import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/settings/settings.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class EditProfil extends StatefulWidget {
  final String routeName = "/Editprofile";
  const EditProfil({super.key});

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Row(
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, const Settings().routeName);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/logo/crepiscule.jpg'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(239, 4, 0, 58),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Email',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          custormTextField(
                            context,
                            false,
                            hintText: 'Email',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'First Name',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          custormTextField(
                            context,
                            false,
                            hintText: 'First Name',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Last Name',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          custormTextField(
                            context,
                            false,
                            hintText: 'Last Name',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Phone Number',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          custormTextField(
                            context,
                            false,
                            hintText: 'Phone Number',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            custormBouton(context,
                onTap: () {},
                title: 'Update',
                color: const Color.fromARGB(255, 3, 127, 230),
                colorText: Colors.white.withOpacity(0.7)),
          ],
        ),
      ),
    );
  }
}
