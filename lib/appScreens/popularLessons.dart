import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularLessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Popular",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textScaleFactor: 1.1,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 32,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("trainings")
              .orderBy("name")
              .snapshots(),
          builder: (context, snapshots) {
            if (snapshots.hasData) {
              List<QueryDocumentSnapshot> dataItems = snapshots.data.documents;
              return ListView.builder(
                itemCount: dataItems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/mentalTraining");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.1)),
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FadeInImage(
                                image: NetworkImage(dataItems[index]["image"]),
                                placeholder:
                                    AssetImage("assets/images/placeholder.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  dataItems[index]["name"],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'san fransisco',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  dataItems[index]["duration"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'san fransisco',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Image.asset(
                                  "assets/icons/like.png",
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CupertinoActivityIndicator(
                  animating: true,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
