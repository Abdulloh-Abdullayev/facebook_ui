import 'package:facebook_ui/pages/FaceBook_Page.dart';
import 'package:facebook_ui/pages/Facebook%20chats%20dark.dart';
import 'package:facebook_ui/pages/Facebook%20dark.dart';
import 'package:facebook_ui/pages/FceBook%20chats.dart';
import 'package:facebook_ui/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) =>HomePage(),
        FaceBook.id: (context) =>FaceBook(),
        FacebookDark.id: (context) =>FacebookDark(),
        Massengerlight.id: (context) =>Massengerlight(),
        MassengerDark.id: (context) =>MassengerDark(),
      },
    );
  }
}
