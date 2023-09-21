import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(height: 100,width: 200,
              color: Colors.black,
            ),
            Container(height: 100,width: 200,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
