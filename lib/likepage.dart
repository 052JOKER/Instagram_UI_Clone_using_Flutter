import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> with TickerProviderStateMixin {
  Color SelectedColor = const Color(0xFF262626);
  Color NotSelectedColor = const Color(0xFF000000).withOpacity(0.4);
  bool isSelected = true;
  bool isLike = true;
  AssetImage likeImage = const AssetImage('assets/bottom_navbar_assets/Like.png');
  late TabController tabcontroller;

  @override
  void initState() {
    tabcontroller = TabController(initialIndex: 1, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              indicatorColor: const Color(0xFF262626),
              controller: tabcontroller,
              unselectedLabelColor: const Color(0xFF000000).withOpacity(0.4),
              labelColor: const Color(0xFF262626),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              tabs: const [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabcontroller,
                children: [
                  const Center(
                    child: Text('Following tab'),
                  ),
                  ListView(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 14.0, horizontal: 16.0),
                          child: Text(
                            'Follow Requests',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                        ),
                      ),
                      newMessage(),
                      todayMessage(),
                      thisWeekMessage(),
                      thisMonthMessage(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newMessage() {
    return Column(
      children: [
        Divider(
          thickness: 0.3,
          color: const Color(0xFF3C3C43).withOpacity(0.29),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              someoneLikePost(),
            ],
          ),
        )
      ],
    );
  }

  Widget todayMessage() {
    return Column(
      children: [
        Divider(
          thickness: 0.3,
          color: const Color(0xFF3C3C43).withOpacity(0.29),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              multipleLikePost(),
            ],
          ),
        )
      ],
    );
  }

  Widget thisWeekMessage() {
    return Column(
      children: [
        Divider(
          thickness: 0.3,
          color: const Color(0xFF3C3C43).withOpacity(0.29),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'This Week',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneCommentYourPost(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              youFollowSomeone(),
            ],
          ),
        )
      ],
    );
  }

  Widget thisMonthMessage() {
    return Column(
      children: [
        Divider(
          thickness: 0.3,
          color: const Color(0xFF3C3C43).withOpacity(0.29),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'This Month',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
              const SizedBox(
                height: 8,
              ),
              someoneFollowYou(),
            ],
          ),
        )
      ],
    );
  }

  Widget multipleLikePost() {
    return Row(
      children: [
        SizedBox(
          height: 44,
          width: 44,
          child: Stack(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/userdetails/user4profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/userdetails/user4profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Row(
          children: [
            const Text(
              'kiero_d, zackjohn ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              'and',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              ' 26 others ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              'liked your photo.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
            Text(
              ' 1h',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000).withOpacity(0.4),
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 44,
          width: 44,
          child: Image.network(
            'https://images.unsplash.com/photo-1637140945341-f28ada987326?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
    // Container(
  }

  Widget someoneLikePost() {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/userdetails/user6profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Row(
          children: [
            const Text(
              'karennne ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              'liked your photo.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
            Text(
              ' 1h',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000).withOpacity(0.4),
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 44,
          width: 44,
          child: Image.network(
            'https://images.unsplash.com/photo-1637140945341-f28ada987326?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget someoneFollowYou() {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/userdetails/user6profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Row(
          children: [
            const Text(
              'martini_rond ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              'started following you.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
            Text(
              ' 3d',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000).withOpacity(0.4),
              ),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
              height: 28,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xFF3C3C43).withOpacity(0.18), width: 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: const Center(
                child: Text(
                  'Message',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              )),
        ),
      ],
    );
  }

  Widget someoneCommentYourPost() {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/userdetails/user6profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'craig_love ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF262626),
                  ),
                ),
                const Text(
                  'mentioned you in a comment:@jacob_w exactly.. ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF262626),
                  ),
                ),
                Text(
                  ' 2d',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000).withOpacity(0.4),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (isLike == true) {
                        isLike = false;
                        likeImage = const AssetImage(
                            'assets/bottom_navbar_assets/Like_Selected.png');
                      } else {
                        isLike = true;
                        likeImage =
                            const AssetImage('assets/bottom_navbar_assets/Like.png');
                      }
                    });
                  },
                  child: Image(
                    image: likeImage,
                    color: isLike == true ? Colors.black : Colors.red,
                    height: 12,
                    width: 12,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Reply',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: const Color(0xFF000000).withOpacity(0.4)),
                  ),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
              height: 28,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xFF3C3C43).withOpacity(0.18), width: 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: const Center(
                child: Text(
                  'Message',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              )),
        ),
      ],
    );
  }

  Widget youFollowSomeone() {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/userdetails/user6profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Row(
          children: [
            const Text(
              'mis_potter ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
            const Text(
              'started following you.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
            Text(
              ' 3d',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000).withOpacity(0.4),
              ),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
              height: 28,
              width: 90,
              decoration: const BoxDecoration(
                color: Color(0xFF3797EF),
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white),
                ),
              )),
        ),
      ],
    );
  }
}
