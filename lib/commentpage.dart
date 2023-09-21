import 'package:flutter/material.dart';
import 'package:instagramclone/commentContainer.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  AssetImage isLikedImage = const AssetImage('assets/bottom_navbar_assets/Like.png');
  bool isLiked = false;
  List<Map<String, dynamic>> CommentList = [
    {
      'userinfo': {
        'user name': 'Jackson',
        'isVerified': true,
        'user profile': 'assets/userdetails/user7profile.jpg',
        'time': '3h',
        'comment': 'Nice Pic',
        'isCommentLiked': true,
        'LikeCount': '247',
      },
    },
    {
      'userinfo': {
        'user name': 'Zim',
        'isVerified': false,
        'user profile': 'assets/userdetails/user8profile.jpg',
        'time': '2h',
        'comment': 'Awesome',
        'isCommentLiked': false,
        'LikeCount': '16',
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Comments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: CommentList.length,
                itemBuilder: (context, index) {
                  return CommentContainer(
                    ImageURL: CommentList[index]['userinfo']['user profile'],
                    UserName: CommentList[index]['userinfo']['user name'],
                    isVerified: CommentList[index]['userinfo']['isVerified'],
                    Time: CommentList[index]['userinfo']['time'],
                    Comment: CommentList[index]['userinfo']['comment'],
                    LikeCount: CommentList[index]['userinfo']['LikeCount'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
