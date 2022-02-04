import 'package:flutter/material.dart';

class FaceBook extends StatefulWidget {
  const FaceBook({Key? key}) : super(key: key);
  static final String id = "FaceBook";

  @override
  _FaceBookState createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {

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
      backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: false,
              title: Text("facebook", style: TextStyle(color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold, letterSpacing: 1),),
              actions: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search, color: Colors.black45,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.camera_alt, color: Colors.black45,),
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
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade50,
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

                        Text("Live", style: TextStyle(color: Colors.black,),)
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

                        Text("Photo", style: TextStyle(color: Colors.black,),)
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

                        Text("Check in", style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// chiziq
            Container(
              height: 7,
              color: Colors.grey.shade200,
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
              color: Colors.grey.shade200,
            ),

            /// Post
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text("User Two", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    subtitle: Text("1 hr ago", style: TextStyle(color: Colors.grey,)),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_horiz, color: Colors.black,),
                    ),
                    leading: CircleAvatar(
                      radius: 25,
                      child: Image.asset("assets/images/Joshua.png"),
                    ),
                  ),
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 18, top: 15),
                    child: Text("Contrary to popular belief, Lorem Ipsum is not. It has roots in a piece of", style: TextStyle(color: Colors.black, fontSize: 17),),
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
                              Text("2.5K",style: TextStyle(fontSize: 15, color: Colors.grey.shade800),)
                            ],
                          ),
                          Text("400 Comment",style: TextStyle(fontSize: 15, color: Colors.grey.shade800),)

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// chiziq
            Container(
              height: 7,
              color: Colors.grey.shade200,
            ),

            /// new Post
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Emily Wu ", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            TextSpan(text: "and ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            TextSpan(text: "Matilda Larose ", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            TextSpan(text: "like ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            TextSpan(text: "Glossier ", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,letterSpacing: 1),),
                          ]
                        ),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.more_horiz,  color: Colors.black,),
                  ),
                  /// chiziq
                  Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 4,
                    color: Colors.grey.shade200,
                  ),

                  ListTile(
                    title: Text("Glossier", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: [
                        Text("Sponsored.", style: TextStyle(color: Colors.grey,)),
                        Icon(Icons.notifications, size: 15,)
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: 25,
                      child: Image.asset("assets/avatar/mavhum.png"),
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 18, top: 5),
                    child: Text("Contrary to popular belief, Lorem Ipsum is not. It has roots in.", style: TextStyle(color: Colors.black, fontSize: 17),),
                  ),
                  Image.asset("assets/pictures/garderob.png"),
                  ListTile(
                    title: Text("GLOSSER.COM", style: TextStyle(color: Colors.grey.shade500, fontSize: 10, letterSpacing: 1),),
                    subtitle: Text("Skincare First, Makeup Second.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,letterSpacing: 1)),
                    trailing: MaterialButton(
                      onPressed: (){},
                      color: Colors.grey.shade200,
                      child: Text("Shop Now"),
                    )
                  ),

                  /// Iconchalar
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 2,right: 2,bottom: 10),
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
                              Text("1,418",style: TextStyle(fontSize: 15, color: Colors.grey.shade800),)
                            ],
                          ),
                          Text("55 Comments, 11 shares",style: TextStyle(fontSize: 15, color: Colors.grey.shade800),)

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// chiziq
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 4,
              color: Colors.grey.shade200,
            ),

            /// 3 Bottom
            Container(
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
                          icon: Icon(Icons.circle, color: Colors.grey.shade300,),
                        ),

                        Text("Like", style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.circle, color: Colors.grey.shade300,),
                        ),

                        Text("Comment", style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.circle, color: Colors.grey.shade300,),
                        ),

                        Text("Share", style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ),
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


