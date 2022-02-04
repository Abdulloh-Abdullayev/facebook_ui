import 'package:facebook_ui/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Massengerlight extends StatefulWidget {
  const Massengerlight({Key? key}) : super(key: key);
  static final String id = "Massenger light";

  @override
  _MassengerlightState createState() => _MassengerlightState();
}

class _MassengerlightState extends State<Massengerlight> {
  List<ListHorizontal> list1 = [

    ListHorizontal("assets/images/Joshua.png", "Joshu"),
    ListHorizontal("assets/images/Martin.png", "Martin"),
    ListHorizontal("assets/images/Joshua.png", "Karen"),
    ListHorizontal("assets/images/oval_3.png", "Jack"),
    ListHorizontal("assets/images/Joshua.png", "Joshu"),
    ListHorizontal("assets/images/Martin.png", "Martin"),
    ListHorizontal("assets/images/Joshua.png", "Karen"),
    ListHorizontal("assets/images/oval_3.png", "Jack"),
    ListHorizontal("assets/images/Joshua.png", "Joshu"),
    ListHorizontal("assets/images/Martin.png", "Martin"),
    ListHorizontal("assets/images/Joshua.png", "Karen"),
    ListHorizontal("assets/images/oval_3.png", "Jack"),

  ];

  List<ListTile1> list2 = [
    ListTile1("assets/avatar/Martin.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Jack.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Karen.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/qiz.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Joshua.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Martin.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Jack.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Karen.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/qiz.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
    ListTile1("assets/avatar/Joshua.png", "Martin Randolph",
        "You: What's man!.9:40 AM"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Oval.png"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Chats",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.event_note,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width / 1.10,
              padding: EdgeInsets.only(
                bottom: 8,
              ),
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,

          child: Column(
            children: [
              /// ListVieW Horizontal
              Container(
                padding: EdgeInsets.only(left: 14, right: 14),
                height: 106,
                child: Row(
                  children: [
                    /// Add
                  Expanded(
                    child: Container(
                    height: 77,
                    width: 65,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey.shade100,
                          child: Text("+", style: TextStyle(
                                fontSize: 30, color: Colors.black
                              ),),
                        ),

                        SizedBox(height: 8,),
                        Text(
                          "add",
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                        ),
                      ],
                    ),
                ),
                  ),
                    /// ListVieW Horizontal
                    Expanded(
                      flex: 6,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: list1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return _itemList(index);
                        },
                      ),
                    ),
                  ],
                )
              ),

              /// ListTile
              Card(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: list2.length,
                      itemBuilder: (context, index) {
                        return buildCard(index);
                      },
                    ),
                    Container(
                      height: 76,
                      child: ListTile(
                          leading: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage(
                              "assets/avatar/mavhum.png",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            "Pixsellz",
                          ),
                          subtitle: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Make design procces easie..\n",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              TextSpan(
                                text: "View More",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              ),
                            ]),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.only(left: 50),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/images/Rectangle.png"),
                              fit: BoxFit.cover,
                            )),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCard(int index) {
    return Container(
      height: 76,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage(
            list2[index].image,
          ),
          backgroundColor: Colors.transparent,
        ),
        title: Text(list2[index].title),
        subtitle: Text(
          list2[index].subtitle,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        trailing: Icon(Icons.check_circle_outline),
      ),
    );
  }

  Widget _itemList(int index) {
    return Container(
      height: 77,
      width: 65,
      padding: EdgeInsets.only(right: 10, left: 10, top: 13),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 46.61,
                width: 52,
                decoration: BoxDecoration(
                    image:  DecorationImage(
                        image: AssetImage(list1[index].image),
                        fit: BoxFit.cover
                    )
                ),
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green.shade500,
              )
            ],
          ),
          SizedBox(height: 8,),
          Text(
            list1[index].name,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
        ],
      ),
    );
  }
}


class ListHorizontal {
  String image;
  String name;

  ListHorizontal(this.image, this.name);
}

class ListTile1 {
  String image;
  String title;
  String subtitle;

  ListTile1(this.image, this.title, this.subtitle);
}

