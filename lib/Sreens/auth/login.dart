import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/sign_up.dart';

import '../home/home.dart';
import '../widget/utility.dart';

class Login extends StatefulWidget {
  final String routeName = "/sign_in";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscur = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void _passVisible() {
    setState(() {
      isObscur = !isObscur;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final _forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: container()),
        ],
      ),
    );
  }

  Widget container() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.3,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: Color.fromARGB(255, 18, 28, 37),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title(
                            name: 'Welcome',
                            colorText: Colors.white,
                            width: 35),
                        title(name: 'Back', colorText: Colors.white, width: 35)
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.camera_enhance,
                          color: Colors.white.withOpacity(0.2),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    custormTextField(
                      context,
                      false,
                      controler: email,
                      hintText: 'Email',
                      key: _formKey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    custormTextField(
                      context,
                      isObscur,
                      controler: password,
                      hintText: 'Password',
                      key: _forKey,
                      iconButton: IconButton(
                        onPressed: _passVisible,
                        icon: Icon(
                          isObscur ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Forgot Password? ',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  custormBouton(context,
                      onTap: _submitData,
                      title: 'Sign In',
                      color: const Color.fromARGB(255, 3, 127, 230),
                      colorText: Colors.white.withOpacity(0.7)),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, const SignUp().routeName);
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitData() {
    if (email.text.isEmpty && password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veiller remplir tous les champs'),
        ),
      );
    } else if (email.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veiller saisir votre email '),
        ),
      );
    } else if (password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veiller saisir votre mot de passe'),
        ),
      );
    } else {
      Navigator.pushReplacementNamed(context, const Home().routeName);
    }
  }
}
