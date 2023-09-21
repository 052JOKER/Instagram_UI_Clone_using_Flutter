import 'package:flutter/material.dart';
import 'package:instagramclone/network.dart';
import 'package:instagramclone/room.dart';

import 'email__page.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  TextEditingController numberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  bool getOTP = false;

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
                'Enter Mobile Number',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: numberController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0x0D000000),
                hintText: 'Mobile Number',
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
                  NetworkCalls()
                      .getOtp(mobile: numberController.text)
                      .then((value) {
                    print(value);
                    if (value?.data['result'] == 'success') {
                      print('success');
                      setState(() {
                        getOTP = true;
                      });
                    }
                  });
                },
                child: getOTP == false
                    ? Container(
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                            color: numberController.text.length == 10
                                ? const Color(0xFF3797EF)
                                : const Color(0x803797EF),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0))),
                        child: const Center(
                          child: Text(
                            'Get OTP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SF Pro Text"),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.number,
                            controller: otpController,
                            onChanged: (v) {
                              setState(() {});
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0x0D000000),
                              hintText: 'OTP',
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
                              await NetworkCalls()
                                  .verifyOtp(
                                      mobile: numberController.text,
                                      otp: otpController.text)
                                  .then(
                                    (value) => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => emailpage(),
                                    ),),
                                  );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: numberController.text.length == 10 &&
                                          otpController.text.length == 6
                                      ? const Color(0xFF3797EF)
                                      : const Color(0x803797EF),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0))),
                              child: const Center(
                                child: Text(
                                  'Verify OTP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "SF Pro Text"),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
