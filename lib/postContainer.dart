import 'package:flutter/material.dart';
import 'package:instagramclone/commentpage.dart';

class PostContainerPage extends StatefulWidget {
  String PostImage;
  String UserName;
  bool isVerified;
  String UserLocation;
  String UserPost;
  String Caption;
  String LikePersonName;
  String LikeCount;
  String Comment;
  List imageList;

  PostContainerPage({
    super.key,
    required this.PostImage,
    required this.UserName,
    required this.isVerified,
    required this.UserLocation,
    required this.UserPost,
    required this.Caption,
    required this.LikePersonName,
    required this.LikeCount,
    required this.Comment,
    required this.imageList,
  });

  @override
  State<PostContainerPage> createState() => _PostContainerPageState();
}

class _PostContainerPageState extends State<PostContainerPage> {
  AssetImage isLikedImage = const AssetImage('assets/bottom_navbar_assets/Like.png');
  bool isLiked = false;
  bool isSaved = false;
  int currentPage = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.PostImage),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.UserName,
                          style: const TextStyle(fontSize: 13),
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
                            : const SizedBox.shrink()
                      ],
                    ),
                    Text(
                      widget.UserLocation,
                      style: const TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  print(widget.imageList[0]);
                  // print(widget.imageList[0][0]['path']);
                  // print(widget.imageList[0][1]['path']);
                  // print(widget.imageList[0][2]['path']);
                  // currentPage;
                },
                icon: const Icon(Icons.more_horiz_outlined))
          ],
        ),
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                onPageChanged: (v) {
                  setState(() {
                    currentPage = v + 1;
                  });
                },
                controller: pageController,
                pageSnapping: true,
                allowImplicitScrolling: true,
                physics: const ScrollPhysics(),
                itemCount: widget.imageList[0].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, postindex) {
                  return Image(
                    image: AssetImage(widget.imageList[0][postindex]['path']),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(34),
                      ),
                      color: Colors.black45),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
                    child: Text('$currentPage'),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
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
                  icon: ImageIcon(
                    isLikedImage,
                  ),
                  color: isLiked ? Colors.red : Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      enableDrag: true,
                      isDismissible: true,
                      isScrollControlled: true,
                      builder: (context) {
                        return const ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(34),
                              topRight: Radius.circular(34)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FractionallySizedBox(
                              heightFactor:0.6,
                              child: CommentPage(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const ImageIcon(
                      AssetImage('assets/bottom_navbar_assets/Comment.png')),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                      AssetImage('assets/bottom_navbar_assets/Send.png')),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (isSaved == true) {
                    isSaved = false;
                  } else {
                    isSaved = true;
                  }
                });
              },
              icon: isSaved == true
                  ? const Icon(Icons.bookmark)
                  : const Icon(Icons.bookmark_border_sharp),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.Caption),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text('Liked by '),
              Text(
                widget.LikePersonName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              Text(
                widget.LikeCount,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                widget.LikePersonName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(widget.Comment),
            ],
          ),
        ),
        const Divider(
          thickness: 0.5,
          color: Colors.black,
        ),
      ],
    );
  }
}
