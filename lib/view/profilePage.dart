import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("Profile",style: new TextStyle(color: Colors.black),),
          elevation: 1,
          leading: Icon(Icons.add),
          backgroundColor: Color(appbarColor),
          centerTitle: true,
        ),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.person,size: 60,),
                  backgroundColor: Colors.grey,
                  radius: 60,),
                SizedBox(height: 10,),
                Text("Abdullah Butt",style: headingStyle(),),
                SizedBox(height: 40,),
                CircleAvatar(child: Icon(Icons.settings,size: 20,color: Colors.green,),
                  backgroundColor: Color(productboxColor),
                  radius: 20,),
                SizedBox(height: 10,),
                Text("Setting",style: headingStyle(),),
                customMyAdsWidgets(),
              ],
      ),
          ),
        ),
      ),
    );
  }
}


Widget customMyAdsWidgets(){
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(productboxColor),
        child: Align(
          alignment: Alignment.topLeft,
          child: new Column(
           children: <Widget>[
             Text("My Ads",style: headingStyle(),)
           ],
          ),
        ),
      ),
    ),
  );
}