import 'package:flutter/material.dart';
import 'package:meditationapp/widgets/widgets.dart' as widget;

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  final circularRadius = 25.0;
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.BottomNavigationWidget(
        selectedIndex: 0,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + 5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(45, 49, 172, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(circularRadius),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DAY 7",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontFamily: 'san fransisco',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Love and Accept",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'san fransisco',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28.0,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\nYourself",
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.22,
                    child: Image.asset(
                      "assets/images/nature.png",
                      height: 125,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.025,
                    right: -10,
                    child: Image.asset(
                      "assets/images/nature2.png",
                      height: 180,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: MediaQuery.of(context).size.width * 0.02,
                    child: Image.asset(
                      "assets/images/girl.png",
                      height: MediaQuery.of(context).size.height * 0.30,
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              controller: _scrollController,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                widget.Title(
                  title: "Popular",
                  onPressed: () {
                    Navigator.pushNamed(context, "/popular");
                  },
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.225,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15.0),
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(45, 115, 213, 1),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Anxiety",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'san fransisco',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28.0),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    "Turn down the stress",
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'san fransisco',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 20.0),
                                  child: Text(
                                    "7 Steps | 5-11 min",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'san fransisco',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: Container(
                                height: 100.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/tree.png'),
                                )),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                widget.Title(
                  title: "New",
                  onPressed: () {
                    Navigator.pushNamed(context, "/popular");
                  },
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.225,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15.0),
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(254, 161, 113, 1),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Happiness",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'san fransisco',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28.0),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    "Daily Calm",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'san fransisco',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 20.0),
                                  child: Text(
                                    "7 Steps | 3-11 min",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'san fransisco',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: Container(
                                height: 100.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/tree.png'),
                                )),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
