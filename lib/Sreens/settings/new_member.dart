import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/settings/member.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class NewMember extends StatefulWidget {
  final String routeName = "/NewMember";
  const NewMember({super.key});

  @override
  State<NewMember> createState() => _NewMemberState();
}

class _NewMemberState extends State<NewMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                children: [
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, const Member().routeName);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'New Members',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            title(name: 'Information', colorText: Colors.white, width: 30),
            const SizedBox(
              height: 20,
            ),
            custormTextField(
              context,
              false,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            custormTextField(
              context,
              false,
              hintText: 'UserName',
            ),
            const SizedBox(
              height: 20,
            ),
            title(name: 'Access', colorText: Colors.white, width: 35),
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
            Expanded(child: Container()),
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
