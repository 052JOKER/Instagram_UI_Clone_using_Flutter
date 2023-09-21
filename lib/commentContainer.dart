import 'package:flutter/material.dart';

class CommentContainer extends StatefulWidget {
  String ImageURL;
  String UserName;
  bool isVerified;
  String Time;
  String Comment;
  String LikeCount;

  CommentContainer(
      {super.key,
      required this.ImageURL,
      required this.UserName,
      required this.isVerified,
      required this.Time,
      required this.Comment,
      required this.LikeCount});

  @override
  State<CommentContainer> createState() => _CommentContainerState();
}

class _CommentContainerState extends State<CommentContainer> {
  bool isLiked = false;
  AssetImage isLikedImage = const AssetImage('assets/bottom_navbar_assets/Like.png');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.ImageURL), fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.UserName,style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      widget.isVerified == true
                          ? const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                image: AssetImage(
                                    'assets/userdetails/Verified.png'),
                                height: 15,
                              ),
                            )
                          : const SizedBox(
                              width: 8,
                            ),
                      Text(
                        widget.Time,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.Comment,style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text('Reply',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (isLiked == false) {
                        isLiked = true;
                        isLikedImage = const AssetImage(
                            'assets/bottom_navbar_assets/Like_Selected.png');
                      } else {
                        isLiked = false;
                        isLikedImage =
                            const AssetImage('assets/bottom_navbar_assets/Like.png');
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: isLikedImage,
                      color: isLiked ? Colors.red : Colors.black,
                    ),
                  ),
                ),
                Text(
                  widget.LikeCount,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
