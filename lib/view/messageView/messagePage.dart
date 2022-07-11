import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/messageView/chatPage.dart';

final imgUrl='https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(bodyColor),
        appBar: new AppBar(
          title: new Text(
            "My Messages",
            style: new TextStyle(color: Colors.black),
          ),
          elevation: 1,
          backgroundColor: Color(appbarColor),
          centerTitle: true,
        ),

        body:ListView.builder(
          itemCount: 17,
            itemBuilder: (context,index){
            return customMessageListTile(context);
            }
        )
      ),
    );
  }
}

Widget customMessageListTile(BuildContext context){
  return Column(
    children: [
      ListTile(
        leading: new CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 25,
        ),
        title: new Text("Abdullah Butt"),
        subtitle: new Text("Where are you? i am waiting at UC "),
        trailing: new Text("3 minutes ago"),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>ChatScreen()));
        },
      ),
      Divider(height: 0,thickness: 1,)
    ],
  );
}