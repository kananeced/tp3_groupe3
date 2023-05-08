import 'package:flutter/material.dart';
import '../widget/utility.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  final String routeName = "/sign_up";
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObscur = true;

  void _passVisible() {
    setState(() {
      isObscur = !isObscur;
    });
  }

  @override
  Widget build(BuildContext context) {
    final islandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 1,
                    image: AssetImage('assets/logo/appart.jpg'),
                    fit: BoxFit.fill)),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              alignment: Alignment.bottomCenter,
              child: container(islandscape)),
        ],
      ),
    );
  }

  Widget container(bool islandscape) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Color.fromARGB(255, 18, 28, 37),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 30, right: 20, left: 20, top: 30),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              if (!islandscape) corps(),
              if (islandscape)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    custormTextField(context, false, hintText: 'Email'),
                    const SizedBox(
                      height: 10,
                    ),
                    custormTextField(context, false, hintText: 'First Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    custormTextField(
                      context,
                      isObscur,
                      hintText: 'Password',
                      iconButton: IconButton(
                        onPressed: _passVisible,
                        icon: Icon(
                          isObscur ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'You have agreed to our ',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: ' when you continue to sign up ',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // mainAxisSize: MainAxisSize.min,

                    custormBouton(context,
                        //         onTap: () {
                        //   Navigator.pushReplacementNamed(
                        //       context, const SignUp().routeName);
                        // },
                        title: 'Get Started',
                        color: const Color.fromARGB(255, 3, 127, 230),
                        colorText: Colors.white.withOpacity(0.7)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, const Login().routeName);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            ]),
          ),
        ));
  }

  Widget corps() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(name: 'New', colorText: Colors.white, width: 35),
                  title(name: 'Account', colorText: Colors.white, width: 35)
                ],
              ),
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.camera_enhance,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  subTitle(
                      name: 'Upload',
                      colorText: Colors.white.withOpacity(0.2),
                      width: 12),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              custormTextField(context, false, hintText: 'Email'),
              const SizedBox(
                height: 10,
              ),
              custormTextField(context, false, hintText: 'First Name'),
              const SizedBox(
                height: 10,
              ),
              custormTextField(
                context,
                isObscur,
                hintText: 'Password',
                iconButton: IconButton(
                  onPressed: _passVisible,
                  icon: Icon(
                    isObscur ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: 'You have agreed to our ',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' when you continue to sign up ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        custormBouton(context,
            //         onTap: () {
            //   Navigator.pushReplacementNamed(
            //       context, const SignUp().routeName);
            // },
            title: 'Get Started',
            color: const Color.fromARGB(255, 3, 127, 230),
            colorText: Colors.white.withOpacity(0.7)),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, const Login().routeName);
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
