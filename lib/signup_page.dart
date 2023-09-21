import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/room.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Color loginButtonColor = const Color(0x803797EF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Instagram Logo.png',
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(),
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: usernameController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0x0D000000),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: Color(0x33000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    controller: mobileNumberController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0x0D000000),
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                          color: Color(0x33000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailIDController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0x0D000000),
                      hintText: 'Email ID',
                      hintStyle: TextStyle(
                          color: Color(0x33000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0x0D000000),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Color(0x33000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0x1A000000),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () async {
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(usernameController.text);
                      if (usernameController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty &&
                              emailIDController.text.isNotEmpty &&
                              mobileNumberController.text.isNotEmpty
                          ) {
                        try {
                          firebaseAuth
                              .createUserWithEmailAndPassword(
                                  email: emailIDController.text,
                                  password: passwordController.text)
                              .then((value) =>
                                  firebaseAuth.signInWithEmailAndPassword(
                                      email: emailIDController.text,
                                      password: passwordController.text));
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const RoomPage()));
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            setState(() {
                              passwordController.clear();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(e.message ?? '')));
                            });
                          } else if (e.code == 'user-already-exist') {
                            setState(() {
                              passwordController.clear();
                              emailIDController.clear();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(e.message ?? '')));
                            });
                          }
                        } catch (error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(error.toString() ?? '')));
                        }
                      } else {
                        const SnackBar(
                          content: Text('Please Enter Email ID or Password'),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 44.0,
                      decoration: BoxDecoration(
                          color: usernameController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty &&
                              emailIDController.text.isNotEmpty &&
                              mobileNumberController.text.isNotEmpty
                              ? const Color(0xFF3797EF)
                              : const Color(0x803797EF),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0))),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "SF Pro Text"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Facebook Icon.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Log in with Facebook',
                          style: TextStyle(
                              color: Color(0xFF3797EF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "SF Pro Text"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          endIndent: 30,
                          thickness: 1,
                          color: Color(0x143C3C43),
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                            color: Color(0x66000000),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "SF Pro Text"),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 30,
                          thickness: 1,
                          color: Color(0x143C3C43),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Color(0x66000000),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: "SF Pro Text"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          ' Log In.',
                          style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "SF Pro Text"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 84,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Divider(
                thickness: 0.33,
                color: Color(0x143C3C43),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Instagram от Facebook',
                  style: TextStyle(
                      color: Color(0x66000000),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF Pro Text"),
                ),
              ),
            ],
          )),
    );
  }
}
