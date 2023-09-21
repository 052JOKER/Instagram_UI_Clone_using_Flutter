import 'package:flutter/material.dart';
class CustomContainerwithiconPage extends StatefulWidget {
  final String Name;
  const CustomContainerwithiconPage({super.key,required this.Name});

  @override
  State<CustomContainerwithiconPage> createState() => _CustomContainerwithiconPageState();
}

class _CustomContainerwithiconPageState extends State<CustomContainerwithiconPage> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32.0,
            decoration: BoxDecoration(
              color: const Color(0xFF3C3C43).withOpacity(0.18),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ImageIcon(AssetImage('assets/${widget.Name}.png')),
                  Text(
                    widget.Name,
                    style: const TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SF Pro Text"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
