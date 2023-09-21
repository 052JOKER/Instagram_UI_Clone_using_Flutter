import 'package:flutter/material.dart';
import 'package:instagramclone/room.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                'Enter User Detials',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: confirmPasswordController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0x0D000000),
                hintText: 'Confirm Password',
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
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RoomPage()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 44.0,
                decoration: BoxDecoration(
                    color: passwordController.text.length >= 6 &&
                            confirmPasswordController.text ==
                                passwordController.text
                        ? const Color(0xFF3797EF)
                        : const Color(0x803797EF),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
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
