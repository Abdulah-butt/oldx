import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/adView/adDetailPage.dart';
import 'package:oldx_app/view/customWidgets.dart';
import 'package:oldx_app/view/drawer.dart';

final _search_txt = new TextEditingController();
final imgUrl='https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(bodyColor),
        drawer: myDrawer(),
        appBar: new AppBar(
          title: appBarTitle("OldX"),
          centerTitle: true,
          backgroundColor: Color(appbarColor),
          elevation: 1,
          actions: <Widget>[
            new IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_none_outlined))
          ],
          iconTheme: IconThemeData(color: Colors.green),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: new ListView(
            children: <Widget>[
              customSearchbar(Icon(Icons.search), _search_txt, "What are you looking for?"),
              SizedBox(height: 10,),
              Container(
                height:100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder:(context,index){
                    return customCategoryWidget();
                  },
                  ),
                ),
              SizedBox(height: 10,),
              new Divider(height: 1,color: Colors.black12,thickness: 2,),
              Container(
                height:50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder:(context,index){
                    return subCategoryButtons("All");
                  },
                ),
              ),
              SizedBox(height: 20,),
              customAdWidet(context),
              customAdWidet(context),
              customAdWidet(context),
              customAdWidet(context),
              customAdWidet(context),
              customAdWidet(context),

            ],
          ),
        ),
      ),
    );
  }
}


Widget customCategoryWidget(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        children: <Widget>[
          new CircleAvatar(backgroundImage: NetworkImage('$imgUrl'),radius: 25,),
          new SizedBox(height: 10,),
          new Text("Home"),
        ],
      ),
    ),
  );
}

