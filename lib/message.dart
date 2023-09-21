import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  String FriendName;
  String FriendPic;
  bool isLive;
  bool isOnline;

  MessagePage(
      {super.key,
      required this.FriendName,
      required this.FriendPic,
      required this.isLive,
      required this.isOnline});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Map<String, dynamic>> ChatList = [
    {
      'Chat content': 'Hey',
      'me': true,
    },
    {
      'Chat content': 'Hello',
      'me': false,
    },
    {
      'Chat content': 'So,  how are you, it been a while? ',
      'me': true,
    },
    {
      'Chat content': 'Not good lately, just busy far some days.',
      'me': false,
    },
    {
      'Chat content': 'What about you?, how you doin?',
      'me': false,
    },
    {
      'Chat content': 'Just Chillin',
      'me': true,
    },
    {
      'Chat content': 'We should meet someday....',
      'me': true,
    },
    {
      'Chat content': 'Sure',
      'me': false,
    },
    {
      'Chat content': 'Will Call you when i will be free',
      'me': false,
    },
    {
      'Chat content': 'Sure my man',
      'me': true,
    },
    {
      'Chat content':
          'hey bro , lets mee at 2 days after today at palm club west block',
      'me': false,
    },
    {
      'Chat content': 'ok will be there on time.',
      'me': true,
    }
  ];

  TextEditingController chatcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              child: Container(
                height: 40,
                width: 40,
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
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.FriendPic),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    widget.isLive == true
                        ? Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 16,
                              width: 26,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Colors.white,
                                      width: 0.3),
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color(0xFFC90083),
                                      Color(0xFFD22463),
                                      Color(0xFFE10038),
                                    ],
                                  ),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(2))),
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
                        : widget.isOnline == true
                            ? Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 0.3),
                                      shape: BoxShape.circle,
                                      color: Colors.lightGreenAccent),
                                ),
                              )
                            : const SizedBox.shrink(),
                    const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            Text(
              widget.FriendName,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: const [
                InkWell(
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ChatList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: 8.0,
                      left: 8.0,
                      right: 8.0,
                      bottom: (ChatList.length - 1 == index) ? 100 : 8),
                  child: Row(
                    children: [
                      if (ChatList[index]['me'] == true)
                        const Expanded(child: SizedBox()),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(6),
                            topRight: const Radius.circular(6),
                            bottomLeft: ChatList[index]['me'] != true
                                ? const Radius.circular(0)
                                : const Radius.circular(6),
                            bottomRight: ChatList[index]['me'] == true
                                ? const Radius.circular(0)
                                : const Radius.circular(6),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(ChatList[index]['Chat content']),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  scrollPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).viewInsets.bottom),
                  keyboardType: TextInputType.emailAddress,
                  controller: chatcontroller,
                  onChanged: (v) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF000000),
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            ChatList.add({
                              'me': true,
                              'Chat content': chatcontroller.text
                            });
                          });
                        },
                        child: const Icon(Icons.send_rounded)),
                    hintText: 'Enter your Message',
                    hintStyle: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SF Pro Text"),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: Color(0x1A000000),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
