import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/splashscreenpage.dart';
import 'package:instagramclone/sutomcontainer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
          options:   const FirebaseOptions(
        apiKey: "AIzaSyCLcjnvlcRtPTteB8F0uiZUhph-kyl1wYs",
        appId: "1:595558694135:web:e7ea55570d35ae8ba9a7f2",
        messagingSenderId: "595558694135",
        projectId: "instagramregexclone",
      ));
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print(e);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.blue,
          //brightness: Brightness.light,
          ),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //themeMode: ThemeMode.system,
      home:
      //LikePage(),
      //FriendsChats(),
      //RoomPage(),
      //CreatePostPage(),
      // SearchPage(),
      SpalshScreen(),
    );
  }
}
