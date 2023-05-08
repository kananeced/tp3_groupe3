import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/settings/delete_member.dart';
import 'package:hi_smart_home/Sreens/settings/new_member.dart';
import 'package:hi_smart_home/Sreens/settings/settings.dart';
import 'package:hi_smart_home/Sreens/widget/devices.dart';

class Member extends StatefulWidget {
  final String routeName = "/Member";
  const Member({super.key});

  @override
  State<Member> createState() => _MemberState();
}

class _MemberState extends State<Member> {
  List<Device> presentDevice = [
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  alignment: Alignment.centerLeft,
                  iconSize: 30,
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
                    'Members',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 25,
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, const NewMember().routeName);
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: presentDevice.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(68, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, const DeleteMember().routeName);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              presentDevice[index].image),
                                          fit: BoxFit.fill),
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cool Ceda',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Smart house',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                                  255, 146, 146, 146)
                                              .withOpacity(0.8),
                                          fontSize: 15,
                                        ),
                                      )
                                    ])
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
