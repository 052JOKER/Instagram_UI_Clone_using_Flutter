import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreen.dart';
import 'package:instagramclone/instagram_search.dart';
import 'package:instagramclone/likepage.dart';
import 'package:instagramclone/postpage.dart';
import 'package:instagramclone/profilepage.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

enum RoomBottomBar { home, search, post, like, profile }

class _RoomPageState extends State<RoomPage> {
  RoomBottomBar selectedenum = RoomBottomBar.home;

  Widget showCurrentWidget() {
    switch (selectedenum) {
      case RoomBottomBar.home:
        return const HomePage();
      case RoomBottomBar.search:
        return const SearchPage();
      case RoomBottomBar.post:
        return const CreatePostPage();
      case RoomBottomBar.like:
        return const LikePage();
      case RoomBottomBar.profile:
        return  const ProfilePage(userName: 'Jacob_w', profilePic: 'assets/Profile Pic.png',);
        return  const ProfilePage(userName: 'Jacob_w', profilePic: 'assets/Profile Pic.png',);
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showCurrentWidget(),
      bottomNavigationBar: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 26),
        width: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [home(), search(), post(), like(), profile()]),
      ),
    );
  }

  Widget home() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedenum = RoomBottomBar.home;
        });
      },
      child: Image.asset(
        selectedenum == RoomBottomBar.home
            ? 'assets/bottom_navbar_assets/Home_Selected.png'
            : 'assets/bottom_navbar_assets/Home.png',
        height: 23,
      ),
    );
  }

  Widget search() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedenum = RoomBottomBar.search;
        });
      },
      child: Image.asset(
        selectedenum == RoomBottomBar.search
            ? 'assets/bottom_navbar_assets/Search_Selected.png'
            : 'assets/bottom_navbar_assets/Search.png',
        height: 23,
      ),
    );
  }

  Widget post() {
    return InkWell(
      onTap: () {
        // setState(() {
        //   selectedenum = RoomBottomBar.post;
        // });
        showModalBottomSheet(
            context: context,
            enableDrag: true,
            isDismissible:true,
            isScrollControlled:true,
            builder: (context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const FractionallySizedBox(
                    heightFactor: 0.9, child: CreatePostPage()),
              );
            });
      },
      child: Image.asset(
        'assets/bottom_navbar_assets/Post.png',
        height: 23,
      ),
    );
  }

  Widget like() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedenum = RoomBottomBar.like;
        });
      },
      child: Image.asset(
        selectedenum == RoomBottomBar.like
            ? 'assets/bottom_navbar_assets/Like_Selected.png'
            : 'assets/bottom_navbar_assets/Like.png',
        height: 23,
      ),
    );
  }

  Widget profile() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedenum = RoomBottomBar.profile;
        });
      },
      child: Image.asset(
        'assets/Profile Pic.png',
        height: 23,
      ),
    );
  }
}
