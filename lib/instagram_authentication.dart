import 'package:flutter/material.dart';
import 'package:instagramclone/LoginScreen.dart';
import 'package:instagramclone/mobile_number.dart';
import 'package:instagramclone/room.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  height: 52,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/Profile Pic.png',
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  'Jacob_w',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "SF Pro Text"),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MobileNumber()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 44.0,
                    decoration: const BoxDecoration(
                        color: Color(0xFF3797EF),
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const Center(
                      child: Text(
                        'Log in with Phone Number',
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
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    'Switch accounts',
                    style: TextStyle(
                        color: Color(0xFF3797EF),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SF Pro Text"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 84,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Divider(
                thickness: 0.33,
                color: Color(0x143C3C43),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          color: Color(0x66000000),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        ' Sign up.',
                        style: TextStyle(
                            color: Color(0xFF262626),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "SF Pro Text"),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
