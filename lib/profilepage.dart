import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/instagram_authentication.dart';

import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  final String userName;
  final String profilePic;

  const ProfilePage(
      {super.key, required this.userName, required this.profilePic});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController profileTabController;

  @override
  void initState() {
    profileTabController =
        TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  List<Map<String, dynamic>> userStory = [
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
      ],
      'story name': 'Friends',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
      ],
      'story name': 'Sports',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
      ],
      'story name': 'Design',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
      ],
      'story name': 'Friends',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
      ],
      'story name': 'Sports',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
      ],
      'story name': 'Design',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Friends.png',
        },
      ],
      'story name': 'Friends',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Sports.png',
        },
      ],
      'story name': 'Sports',
    },
    {
      'story url': [
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
        {
          'type': 'image',
          'url': 'assets/userpaststorys/Design.png',
        },
      ],
      'story name': 'Design',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: TextButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => AccountPage()),
                (route) => false);
          },
          child: Center(
            child: Text('Log Out'),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          children: [
            const Spacer(),
            Text(
              widget.userName,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
            ),
            const Spacer(),
          ],
        ),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
                delegate: SliverChildListDelegate([profileHeaderWidget()]))
          ];
        },
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                controller: profileTabController,
                indicatorColor: const Color(0xFF262626),
                labelColor: const Color(0xFF262626),
                unselectedLabelColor: const Color(0xFF000000).withOpacity(0.4),
                tabs: [
                  Tab(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Icon(Icons.grid_on_sharp),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Image.asset(
                        'assets/userpaststorys/tag.png',
                        height: 23,
                        width: 23,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: profileTabController,
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.asset(
                            'assets/userdetails/user4story.jpg',
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.asset(
                            'assets/userdetails/donuticon.jpg',
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileHeaderWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  height: 86,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    widget.profilePic,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      '54',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      'Posts',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 34,
                ),
                Column(
                  children: const [
                    Text(
                      '834',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      'Followers',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 34,
                ),
                Column(
                  children: const [
                    Text(
                      '162',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      'Following',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0, bottom: 1, left: 16),
          child: Text('Jacob West',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          child: Text(
            'Digital goodies designer @pixsellz \nEverything is designed.',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()));
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF3C3C43).withOpacity(0.18),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: const Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Container(
                          height: 86,
                          width: 86,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text('New'),
                  ],
                ),
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: userStory.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Container(
                            height: 56,
                            width: 56,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              userStory[index]['story url'][0]['url'],
                            ),
                          ),
                        ),
                      ),
                      Text(userStory[index]['story name']),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
