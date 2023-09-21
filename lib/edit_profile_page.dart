import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreen.dart';
import 'package:instagramclone/network.dart';
import 'package:instagramclone/room.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController usernameController = TextEditingController();
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
                'Change User Detials',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: usernameController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0x0D000000),
                hintText: 'username',
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
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0x0D000000),
                hintText: 'email ID',
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
              onTap: () async {
                try {
                  await NetworkCalls()
                      .updateProfile(
                          name: usernameController.text,
                          email: emailController.text)
                      .then((value) {
                    print('response is:'+ '$value');
                  });
                } catch (e) {
                  print(e);
                }
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => RoomPage()),
                // );
              },
              child: Container(
                width: double.infinity,
                height: 44.0,
                decoration: BoxDecoration(
                    color: usernameController.text.length > 0 &&
                            emailController.text.length > 0
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
