import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/settings/member.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class DeleteMember extends StatefulWidget {
  final String routeName = "/DeleteUser";
  const DeleteMember({super.key});

  @override
  State<DeleteMember> createState() => _DeleteMemberState();
}

class _DeleteMemberState extends State<DeleteMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.popAndPushNamed(context, const Member().routeName);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 200,
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
                        height: 15,
                      ),
                      title(
                          name: 'Cool Ceda',
                          colorText: Colors.white,
                          width: 30),
                      subTitle(
                          name: 'kananecedric@outlook.fr',
                          colorText: const Color.fromARGB(132, 255, 255, 255),
                          width: 15),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: title(
                            name: 'Access', colorText: Colors.white, width: 35),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      card(
                        icon: Icons.arrow_drop_down,
                        text: 'Room',
                        textcolor: Colors.white,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      card(
                        icon: Icons.arrow_drop_down,
                        text: 'Service',
                        textcolor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: title(
                    name: 'Delete User',
                    colorText: const Color.fromARGB(255, 223, 100, 100)
                        .withOpacity(0.8),
                    width: 20),
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
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(68, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: textcolor,
                    fontSize: 20,
                  ),
                ),
              ),
              Icon(
                icon,
                color:
                    const Color.fromARGB(255, 223, 100, 100).withOpacity(0.8),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
