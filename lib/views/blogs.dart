import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:covidapp/services/crud.dart';
import 'package:covidapp/views/createblog.dart';

class Blogs extends StatefulWidget {
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  CrudMethods crudMethods = new CrudMethods();

  Stream blogsStream;

  Widget BlogsList() {
    return Container(
      child: blogsStream != null
          ? Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                StreamBuilder(
                  stream: blogsStream,
                  builder: (context, snapshot) {
                    return ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        itemCount: snapshot.data.documents.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BlogsTile(
                            authorName: snapshot
                                .data.documents[index].data['authorName'],
                            title: snapshot.data.documents[index].data["title"],
                            description:
                                snapshot.data.documents[index].data['desc'],
                            imgUrl:
                                snapshot.data.documents[index].data['imgUrl'],
                          );
                        });
                  },
                )
              ],
            )
          : Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
              color: Colors.white,
            ),
    );
  }

  @override
  void initState() {
    crudMethods.getData().then((result) {
      setState(() {
        blogsStream = result;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 60,
              ), //centre karne k liye add kara h
              Text("Covid",
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              Text(
                "Blog",
                style: TextStyle(fontSize: 22, color: Colors.pink[100]),
              )
            ],
          ),
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateBlog()));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.add)),
            )
          ]),
      body: BlogsList(),
      // floatingActionButton: Container(
      //   margin: EdgeInsets.symmetric(horizontal: 20),
      //   padding: EdgeInsets.symmetric(vertical: 20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       FloatingActionButton(
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => CreateBlog()));
      //         },
      //         child: Icon(Icons.add),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

class BlogsTile extends StatelessWidget {
  String imgUrl, title, description, authorName;
  BlogsTile(
      {@required this.imgUrl,
      @required this.title,
      @required this.description,
      @required this.authorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      height: 150,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 170,
            decoration: BoxDecoration(
                color: Colors.white10.withOpacity(0.3),
                borderRadius: BorderRadius.circular(6)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  authorName,
                  style: TextStyle(
                      // fontSize: 17,
                      // fontWeight: FontWeight.w400,
                      color: Colors.black45),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
