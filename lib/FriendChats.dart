import 'package:flutter/material.dart';
import 'package:instagramclone/message.dart';

class FriendsChats extends StatefulWidget {
  const FriendsChats({super.key});

  @override
  State<FriendsChats> createState() => _FriendsChatsState();
}

class _FriendsChatsState extends State<FriendsChats> {
  TextEditingController SearchController = TextEditingController();
  List<Map<String, dynamic>> FriendList = [
    {
      'FriendDetails': {
        'Pic': 'assets/userdetails/user5profile.jpg',
        'Friend UserName': 'Maria',
        'Last Message': 'Hlo?',
        'time': '8h',
        'isSeen': true,
        'isOnline': true,
        'isLive': false,
      },
    },
    {
      'FriendDetails': {
        'Pic': 'assets/userdetails/user7profile.jpg',
        'Friend UserName': 'Jackson',
        'Last Message': 'Did you watch that show?',
        'time': '1h',
        'isSeen': false,
        'isOnline': false,
        'isLive': true,
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const Text(
              'Jacob_w',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send_to_mobile_outlined,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: SearchController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF979797),
                ),
                filled: true,
                fillColor: Color(0x0D000000),
                hintText: 'Search',
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
                    Radius.circular(10),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(onPressed: () {}, child: const Text('Requests'))
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: FriendList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MessagePage(
                                FriendName: FriendList[index]['FriendDetails']
                                    ['Friend UserName'],
                                FriendPic: FriendList[index]['FriendDetails']
                                    ['Pic'],
                                isLive: FriendList[index]['FriendDetails']
                                    ['isLive'],
                                isOnline: FriendList[index]['FriendDetails']
                                    ['isOnline'],
                              )));
                    },
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
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
                                                    FriendList[index]
                                                            ['FriendDetails']
                                                        ['Pic']),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  FriendList[index]['FriendDetails']
                                              ['isLive'] ==
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        )
                                      : FriendList[index]['FriendDetails']
                                                  ['isOnline'] ==
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
                                                    color: Colors
                                                        .lightGreenAccent),
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                  const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            FriendList[index]['FriendDetails']['isSeen'] ==
                                    false
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FriendList[index]['FriendDetails']
                                            ['Friend UserName'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            FriendList[index]['FriendDetails']
                                                ['Last Message'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            FriendList[index]['FriendDetails']
                                                ['time'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FriendList[index]['FriendDetails']
                                            ['Friend UserName'],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            FriendList[index]['FriendDetails']
                                                ['Last Message'],
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            FriendList[index]['FriendDetails']
                                                ['time'],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            FriendList[index]['FriendDetails']['isSeen'] ==
                                    false
                                ? Container(
                                    height: 10,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  )
                                : const SizedBox.shrink(),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
