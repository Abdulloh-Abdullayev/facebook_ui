import 'package:flutter/material.dart';

class FacebookDark extends StatefulWidget {
  const FacebookDark({Key? key}) : super(key: key);
  static final String id = "FacebookDark";

  @override
  _FacebookDarkState createState() => _FacebookDarkState();
}

class _FacebookDarkState extends State<FacebookDark> {

  List<Hotel> itemList = [

    Hotel("assets/pictures/to'lqin.jpg","Friend 1","assets/avatar/Martin.png"),
    Hotel("assets/pictures/poto.jpg","Friend 2","assets/avatar/Martin.png"),
    Hotel("assets/pictures/parij.jpg","Friend 3","assets/avatar/Martin.png"),
    Hotel("assets/pictures/tog'.jpg","Friend 4","assets/avatar/Martin.png"),
    Hotel("assets/pictures/to'lqin.jpg","Friend 1","assets/avatar/Martin.png"),
    Hotel("assets/pictures/poto.jpg","Friend 2","assets/avatar/Martin.png"),
    Hotel("assets/pictures/parij.jpg","Friend 3","assets/avatar/Martin.png"),
    Hotel("assets/pictures/tog'.jpg","Friend 4","assets/avatar/Martin.png"),
    Hotel("assets/pictures/to'lqin.jpg","Friend 1","assets/avatar/Martin.png"),
    Hotel("assets/pictures/poto.jpg","Friend 2","assets/avatar/Martin.png"),
    Hotel("assets/pictures/parij.jpg","Friend 3","assets/avatar/Martin.png"),
    Hotel("assets/pictures/tog'.jpg","Friend 4","assets/avatar/Martin.png"),
    Hotel("assets/pictures/to'lqin.jpg","Friend 1","assets/avatar/Martin.png"),
    Hotel("assets/pictures/poto.jpg","Friend 2","assets/avatar/Martin.png"),
    Hotel("assets/pictures/parij.jpg","Friend 3","assets/avatar/Martin.png"),
    Hotel("assets/pictures/tog'.jpg","Friend 4","assets/avatar/Martin.png"),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Text("Facebook", style: TextStyle(color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold, letterSpacing: 1),),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, color: Colors.grey,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt, color: Colors.grey,),
            ),
            SizedBox(width: 10,)
          ],
          bottom: PreferredSize(
            preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height*0.08),
            child: Container(
              //height:30,
                width: MediaQuery.of(context).size.width/1.05,
                padding: EdgeInsets.only( bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: CircleAvatar(
                          radius: 20,
                          child: Image.asset("assets/images/Martin.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 1.10,
                        padding: EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.white),
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    )
                  ],
                )
            ),

          )
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// 3 Button
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.video_call, color: Colors.red,),
                        ),

                        Text("Live", style: TextStyle(color: Colors.grey,),)
                      ],
                    ),
                  ),
                  Text("|",style: TextStyle(fontSize: 23,color: Colors.grey),),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.photo, color: Colors.green,),
                        ),

                        Text("Photo", style: TextStyle(color: Colors.grey,),)
                      ],
                    ),
                  ),
                  Text("|",style: TextStyle(fontSize: 23,color: Colors.grey),),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.location_on, color: Colors.red,),
                        ),

                        Text("Check in", style: TextStyle(color: Colors.grey,),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// chiziq
            Container(
              height: 7,
              color: Colors.grey.shade900,
            ),

            /// ListView
            Container(
              height: 170,
              child:  SizedBox(
                child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return _itemList(index);
                  },
                ),
              ),
            ),

            /// chiziq
            Container(
              height: 7,
              color: Colors.grey.shade900,
            ),

            /// Main Image
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  ListTile(
                    title: Text("User Two", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    subtitle: Text("1 hr ago", style: TextStyle(color: Colors.grey,)),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_horiz, color: Colors.grey,),
                    ),
                    leading: CircleAvatar(
                      radius: 25,
                      child: Image.asset("assets/images/Joshua.png"),
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 18, top: 15),
                    child: Text("Contrary to popular belief, Lorem Ipsum is not. It has roots in a piece of", style: TextStyle(color: Colors.grey, fontSize: 17),),
                  ),
                  Image.asset("assets/images/qulupnay.jpg"),

                  /// Iconchalar
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 2,right: 2,bottom: 15),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              makeLike(),
                              Transform.translate(
                                offset: Offset(-5,0),
                                child: makeLove(),
                              ),
                              SizedBox(width: 5,),
                              Text("2.5K",style: TextStyle(fontSize: 15, color: Colors.grey),)
                            ],
                          ),
                          Text("400 Comment",style: TextStyle(fontSize: 15, color: Colors.grey),)

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget _itemList(int index) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
            padding: EdgeInsets.all(4),
            child: Container(
              alignment: Alignment.bottomLeft,
              height: 160,
              width: 113,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(itemList[index].image),
                    fit: BoxFit.cover,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(itemList[index].text, style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            )
        ),
        Container(
          padding: EdgeInsets.only(left: 12, top: 12),
          child: CircleAvatar(
            radius: 18,
            child: Image.asset(itemList[index].avatar),
          ),
        ),
      ],
    );
  }
}
class Hotel{
  String image;
  String text;
  String avatar;

  Hotel(this.image, this.text, this.avatar);
}


