import 'package:flutter/material.dart';
import 'package:instagramclone/instagram_authentication.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const AccountPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Instagram Name.png',
                height: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/Instagram Logo.png',
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
