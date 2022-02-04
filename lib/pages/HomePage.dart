import 'package:facebook_ui/pages/FaceBook_Page.dart';
import 'package:facebook_ui/pages/Facebook%20chats%20dark.dart';
import 'package:facebook_ui/pages/Facebook%20dark.dart';
import 'package:facebook_ui/pages/FceBook%20chats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width/3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, Massengerlight.id);
                },
                child: Text("FaceBook chats light", style: TextStyle(color: Colors.white),),
                height: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 15,),

              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, MassengerDark.id);
                },
                child: Text("FaceBook chats dark", style: TextStyle(color: Colors.white),),
                height: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, FaceBook.id);
                },
                child: Text("FaceBook light", style: TextStyle(color: Colors.white),),
                height: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, FacebookDark.id);
                },
                child: Text("FaceBook dark", style: TextStyle(color: Colors.white),),
                height: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
