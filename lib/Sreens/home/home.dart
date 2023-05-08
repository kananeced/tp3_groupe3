import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hi_smart_home/Sreens/widget/devices.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

import '../settings/settings.dart';

class Home extends StatefulWidget {
  final String routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('data'),
    Text('data2'),
    Text('data3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, bottom: 40, top: 20),
        child: GNav(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          iconSize: 30,
          color: Colors.grey.withOpacity(0.5),
          tabBackgroundColor: Colors.blue,
          activeColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          gap: 6,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.add_box,
              text: 'Space',
            ),
            GButton(
              icon: Icons.cloudy_snowing,
              text: 'Clim',
            ),
            GButton(
              icon: Icons.incomplete_circle_rounded,
              text: 'Stat',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
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
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: title(
                      name: 'Mornin\' CoolCeda!',
                      colorText: Colors.white,
                      width: 25),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, const Settings().routeName);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo/crepiscule.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: presentDevice.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            presentDevice[index].selected =
                                !presentDevice[index].selected;
                            //log(presentDevice[index].selected.toString());
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: presentDevice[index].selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            shape: BoxShape.circle,
                            color: presentDevice[index].selected
                                ? Colors.white
                                : const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    presentDevice[index].image,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        presentDevice[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: presentDevice[index].selected
                              ? Colors.white
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Equipement> equipement = [
    Equipement(icon: Icons.thermostat_auto),
    Equipement(icon: Icons.thermostat_auto),
    Equipement(icon: Icons.thermostat_auto),
    Equipement(icon: Icons.thermostat_auto),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ListItem(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Color.fromARGB(146, 21, 33, 39),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 25, bottom: 5),
                child: Row(
                  children: List.generate(
                      5,
                      (index) =>
                          Stack(alignment: Alignment.bottomCenter, children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 15,
                              ),
                              width: 300,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/logo/pallais.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(35),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                right: 15,
                              ),
                              height: 140,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(35),
                                  bottomRight: Radius.circular(35),
                                ),
                                color: const Color.fromARGB(255, 134, 131, 131)
                                    .withOpacity(0.8),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 20,
                                        right: 20,
                                        bottom: 15),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                            child: Text(
                                          'Bed Room',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        )),
                                        Text.rich(
                                          TextSpan(
                                              text: '2',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '/5 is',
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                const TextSpan(
                                                  text: ' on',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 196, 104, 104),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                        itemCount: equipement.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    bottom: 5,
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        equipement[index]
                                                                .selected =
                                                            !equipement[index]
                                                                .selected;

                                                        //log(presentDevice[index].selected.toString());
                                                      });
                                                    },
                                                    child: Container(
                                                        width: 70,
                                                        height: 70,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 1.5,
                                                                color: Colors
                                                                    .grey),
                                                            shape:
                                                                BoxShape.circle,
                                                            color: equipement[
                                                                        index]
                                                                    .selected
                                                                ? Colors.white
                                                                : null),
                                                        child: Icon(
                                                          equipement[index]
                                                              .icon,
                                                          color:
                                                              equipement[index]
                                                                      .selected
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .white,
                                                        )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            )
                          ])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
