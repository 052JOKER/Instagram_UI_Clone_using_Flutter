import 'package:flutter/material.dart';
import 'package:instagramclone/FriendChats.dart';
import 'package:instagramclone/postContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage isLikedImage = const AssetImage('assets/bottom_navbar_assets/Like.png');
  bool isLiked = false;
  bool isSaved = false;
  List<Map<String, dynamic>> PersonStoryList = [
    {
      'user': {
        'user Profile Pic': 'assets/Profile Pic.png',
        'user name': "Your story",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/myStory.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/myStory.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/myStory.jpg',
          },
        ],
        'isLive': false,
        'isUser': true,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user1profile.jpg',
        'user name': "Samantha",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': true,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user3profile.jpg',
        'user name': "Andrew",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': false,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user4profile.jpg',
        'user name': "Lora",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': false,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user5profile.jpg',
        'user name': "Robin",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': false,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user6profile.jpg',
        'user name': "Maria",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': false,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user7profile.jpg',
        'user name': "Jackson",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': true,
        'isUser': false,
      },
    },
    {
      'user': {
        'user Profile Pic': 'assets/userdetails/user8profile.jpg',
        'user name': "Zim",
        'user story': [
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
          {
            'story type': 'image',
            'path': 'assets/userdetails/user1story.jpg',
          },
        ],
        'isLive': false,
        'isUser': false,
      },
    },
  ];

  List<Map<String, dynamic>> PersonDetailsList = [
    {
      'person details': {
        'user Profile': 'assets/userdetails/user1profile.jpg',
        'name': "Samantha",
        'isVerified': true,
      },
      'post': {
        'user post': [
          {
            'post type': 'image',
            'path': 'assets/userdetails/user1post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user2post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user3profile.jpg',
          },
        ],
        'caption': 'Happy Saturday!!!',
        'like count': '12,240 others.',
        'comment': 'Looking Good',
        'isSaved': true,
        'isLiked': true,
        'location': 'Tokyo,japan',
      },
      'last like': {'like person name': 'jorge'},
    },
    {
      'person details': {
        'user Profile': 'assets/userdetails/user3profile.jpg',
        'name': "Andrew",
        'isVerified': false,
      },
      'post': {
        'user post': [
          {
            'post type': 'image',
            'path': 'assets/userdetails/user1post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user2post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user3profile.jpg',
          },
        ],
        'caption': 'Gym Time!!!',
        'like count': '132,535 others.',
        'comment': 'Nice Figure',
        'isSaved': true,
        'isLiked': false,
        'location': 'San Francisco',
      },
      'last like': {'like person name': 'J. Michel'},
    },
    {
      'person details': {
        'user Profile': 'assets/userdetails/user2profile.jpg',
        'name': "Rachel",
        'isVerified': true,
      },
      'post': {
        'user post': [
          {
            'post type': 'image',
            'path': 'assets/userdetails/user1post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user2post.jpg',
          },
          {
            'post type': 'image',
            'path': 'assets/userdetails/user3profile.jpg',
          },
        ],
        'caption': 'Workout!!!#Yoga',
        'like count': '87,640 others.',
        'comment': 'Awesome',
        'isSaved': false,
        'isLiked': false,
        'location': 'Washington DC',
      },
      'last like': {'like person name': 'Sam'}
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const ImageIcon(
              AssetImage('assets/camera.png'),
              color: Colors.black,
              size: 22,
            )),
        centerTitle: true,
        title: const Image(
          image: AssetImage('assets/Instagram Logo.png'),
          height: 28,
        ),
        actions: [
          InkWell(onTap: () {}, child: Image.asset('assets/IGTV.png')),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const FriendsChats()));
            },
            icon: const ImageIcon(
              AssetImage('assets/Messanger.png'),
              size: 22,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: PersonStoryList.length,
                itemBuilder: (context, storyindex) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFFFBAA47),
                                Color(0xFFD91A46),
                                Color(0xFFA60F93),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 58,
                                  width: 58,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                PersonStoryList[storyindex]
                                                        ['user']
                                                    ['user Profile Pic']),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PersonStoryList[storyindex]['user']['isLive'] ==
                                      true
                                  ? Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 16,
                                        width: 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside,
                                                color: Colors.white,
                                                width: 2),
                                            gradient: const LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFC90083),
                                                Color(0xFFD22463),
                                                Color(0xFFE10038),
                                              ],
                                            ),
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(2))),
                                        child: const Center(
                                          child: Text(
                                            'LIVE',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  : PersonStoryList[storyindex]['user']
                                              ['isUser'] ==
                                          true
                                      ? Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: InkWell(
                                              onTap: () {},
                                              child: const Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 10,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                              const SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ),
                      Text(PersonStoryList[storyindex]['user']['user name']),
                    ],
                  );
                }),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: PersonDetailsList.length,
            itemBuilder: (context, index) {
              return PostContainerPage(
                PostImage: PersonDetailsList[index]['person details']
                    ['user Profile'],
                UserName: PersonDetailsList[index]['person details']['name'],
                isVerified: PersonDetailsList[index]['person details']
                    ['isVerified'],
                UserLocation: PersonDetailsList[index]['post']['location'],
                UserPost: PersonDetailsList[index]['post']['user post'][0]
                    ['path'],
                Caption: PersonDetailsList[index]['post']['caption'],
                LikePersonName: PersonDetailsList[index]['last like']
                    ['like person name'],
                LikeCount: PersonDetailsList[index]['post']['like count'],
                Comment: PersonDetailsList[index]['post']['comment'],
                imageList: [PersonDetailsList[index]['post']['user post']],
              );
            },
          ),
        ],
      ),
    );
  }
}
