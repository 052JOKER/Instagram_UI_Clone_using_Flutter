import 'package:flutter/material.dart';
import 'package:instagramclone/password_page.dart';
import 'package:intl/intl.dart';

import 'HomeScreen.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  DateTime? _selectedDate;

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
            InkWell(
              onTap: () async {
                await showDatePicker(
                    context: context,
                    initialDate: _selectedDate == null
                        ? DateTime.now().subtract(Duration(days: 3650))
                        : _selectedDate!,
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2014)).then((value) {
                  setState(() {
                    _selectedDate = value;
                    dobController.text =
                        DateFormat('dd MMMM yyyy').format(_selectedDate!);
                    //userValue['dob'] = _selectedDate.toString();
                  });
                });
              },
              child: SizedBox(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: dobController,
                  onChanged: (v) {
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    enabled: false,
                    fillColor: Color(0x0D000000),
                    hintText: 'DOB',
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PasswordPage()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 44.0,
                decoration: BoxDecoration(
                    color: usernameController.text.length > 0
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
