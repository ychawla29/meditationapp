import 'package:flutter/material.dart';
import 'package:meditationapp/widgets/widgets.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: 3,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: AppBar().preferredSize.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/likeActive.png"),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Image.asset("assets/icons/setting.png"),
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: AppBar().preferredSize.height - 25),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/avatar.png"),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Natalia Lebediva",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: 'san fransisco',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Image.asset("assets/images/practices.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Image.asset("assets/images/meditations.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Image.asset("assets/images/stats.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
