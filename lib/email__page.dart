import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreen.dart';
import 'package:instagramclone/profiledetials.dart';

class emailpage extends StatefulWidget {
  const emailpage({super.key});

  @override
  State<emailpage> createState() => _emailpageState();
}

class _emailpageState extends State<emailpage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter Email ID',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
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
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>UserDetails()),);
            },
              child: Container(
                width: double.infinity,
                height: 44.0,
                decoration: BoxDecoration(
                    color: RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailController.text)
                        ? const Color(0xFF3797EF)
                        : const Color(0x803797EF),
                    borderRadius:
                    const BorderRadius.all(Radius.circular(5.0))),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SF Pro Text"),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
