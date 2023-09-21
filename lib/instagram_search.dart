import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searcontroller = TextEditingController();

  // List<Map<String, dynamic>> instagramPost = [
  //   {
  //     'user': {
  //       'name': '',
  //       'user_name': "",
  //       'user_image': "",
  //     },
  //     'post': {
  //       'post_caption': "",
  //       'images': [
  //         ''
  //       ],
  //       'post_date_time': "",
  //       'like_count': '',
  //       'comment_count': ''
  //     }
  //   }
  // ];

  List<Map<String, dynamic>> ImageType = [
    {'image': 'assets/IGTV.png', 'name': 'IGTV'},
    {'image': 'assets/Shop.png', 'name': 'Shop'},
    {'image': null, 'name': 'Style'},
    {'image': null, 'name': 'Sports'},
    {'image': null, 'name': 'Auto'},
    {'image': null, 'name': 'News'},
    {'image': null, 'name': 'Games'},
    {'image': null, 'name': 'Fashion'},
  ];

  List<Map<String, dynamic>> TempList = [];

  static const List<Map<String, dynamic>> ImageList = [
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1637416067365-2b5e7e8fe8fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80'
        },
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1637140945341-f28ada987326?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80',
        },
      ],
      'type': 'IGTV',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1482053450283-3e0b78b09a70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        },
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1637666505754-7416ebd70cbf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80',
        },
      ],
      'type': 'Sports',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1635515418401-02d652590520?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
        },
        {
          'tag': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1689344313489-ce7a5aecb9e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        },
      ],
      'type': 'Fashion',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1635515418016-a63de59727ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
        },
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1634382615649-7227ce9a5cee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
        },
      ],
      'type': 'Fashion',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1635515418041-656b5f80973a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
        },
        {
          'tag': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1680350919629-f60f82838005?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1109&q=80',
        },
      ],
      'type': 'Fashion',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1642364575782-b570e8a534b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=882&q=80',
        },
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1595590424283-b8f17842773f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        },
      ],
      'type': 'Shop',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1621188988909-fbef0a88dc04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        },
      ],
      'type': 'Auto',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1530554764233-e79e16c91d08?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        },
      ],
      'type': 'Games',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1526318896980-cf78c088247c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        },
      ],
      'type': 'News',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=709&q=80',
        },
      ],
      'type': 'Auto',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1570303345338-e1f0eddf4946?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1071&q=80',
        },
      ],
      'type': 'IGTV',
    },
    {
      'photo': [
        {
          'tag': 'image',
          'url':
              'https://images.unsplash.com/photo-1635645476270-dc34672af738?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=765&q=80',
        },
      ],
      'type': 'IGTV',
    },
  ];

  @override
  void initState() {
    for (var element in ImageList) {
      TempList.add(element);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 36,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: searcontroller,
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
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/Live.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.builder(
                itemCount: ImageType.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        TempList = [];
                        for (var element in ImageList) {
                          TempList.add(element);
                        }
                        TempList.retainWhere((element) =>
                            element['type'] == ImageType[index]['name']);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (ImageType[index]['image'] != null)
                                  Image.asset(ImageType[index]['image']),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ImageType[index]['name'],
                                  style: const TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "SF Pro Text"),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: ImageList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: ImageList[index]['photo'].length > 1
                              ? Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            ImageList[index]['photo'][0]['url'],
                                          ),
                                          fit: BoxFit.cover)),
                                  child: const Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: ImageIcon(
                                        AssetImage('assets/multi_image.png'),
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                )
                              : Image.network(
                                  ImageList[index]['photo'][0]['url'],
                                  fit: BoxFit.cover,
                                ),
                        ),
                      );
                    }),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
