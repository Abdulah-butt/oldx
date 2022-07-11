import 'package:flutter/material.dart';
import 'package:oldx_app/view/adView/adPage.dart';
import 'package:oldx_app/view/favouritePage.dart';
import 'package:oldx_app/view/homePage.dart';
import 'package:oldx_app/view/messageView/messagePage.dart';
import 'package:oldx_app/view/profilePage.dart';

class MyApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  List<Widget> pages = [
    HomeScreen(),
    FavouriteScreen(),
    AdScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(children: pages),

          bottomNavigationBar: Container(
            margin: EdgeInsets.only(bottom: 8),
            child: new TabBar(
              indicatorColor:Colors.transparent ,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                    icon: Icon(
                      Icons.favorite_outline,
                    )),
                Tab(
                    icon: Icon(
                      Icons.add,
                    )
                ),
                Tab(
                    icon: Icon(
                      Icons.message,
                    )),
                Tab(
                    icon: Icon(
                      Icons.person,
                    )),
              ],
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
            ),
          ),
        ));
  }
}
