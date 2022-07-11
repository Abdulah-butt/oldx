import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';

final imgUrl =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

final _inputMessage = TextEditingController();

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        backgroundColor: Color(bodyColor),
        appBar: new AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 15,
              ),
              SizedBox(
                width: 10,
              ),
              new Text(
                "Abdullah butt",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: Color(appbarColor),
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.green),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: new ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  customMessageContainer(
                      "Abdullahbutt@gmail.com", "Hello,abdullah its Me :) "),
                  customMessageContainer("Abdullahbutt@gmail.com", "Where are you"),
                  customMessageContainer(
                      "faseeh@gmail.com", "ohh hi, I am at UC . Let's have a tea ;)"),
                  customMessageContainer(
                      "Abdullahbutt@gmail.com", "Hello,abdullah its Me :) "),
                  customMessageContainer("Abdullahbutt@gmail.com", "Where are you"),
                  customMessageContainer(
                      "faseeh@gmail.com", "ohh hi, I am at UC . Let's have a tea ;)"),
                  customMessageContainer(
                      "Abdullahbutt@gmail.com", "Hello,abdullah its Me :) "),
                  customMessageContainer("Abdullahbutt@gmail.com", "Where are you"),
                  customMessageContainer(
                      "faseeh@gmail.com", "ohh hi, I am at UC . Let's have a tea ;)"),
                  customMessageContainer(
                      "Abdullahbutt@gmail.com", "Hello,abdullah its Me :) "),
                  customMessageContainer("Abdullahbutt@gmail.com", "Where are you"),
                  customMessageContainer(
                      "faseeh@gmail.com", "ohh hi, I am at UC . Let's have a tea ;)"),
                  customMessageContainer(
                      "Abdullahbutt@gmail.com", "Hello,abdullah its Me :) "),
                  customMessageContainer("Abdullahbutt@gmail.com", "Where are you"),
                  customMessageContainer(
                      "faseeh@gmail.com", "ohh hi, I am at UC . Let's have a tea ;)"),
                ],
              ),
            ),
            customTypeMessageWidget()
          ],
        ),
      ),
    );
  }
}

Widget customTypeMessageWidget() {
  return Container(
    color: Color(productboxColor),
    child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 10),
                child: new Icon(Icons.message),
              ),
              Expanded(
                child: new TextField(
                  controller: _inputMessage,
                  decoration: InputDecoration(
                    hintText: "Type your message",
                    border: InputBorder.none,
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: new Icon(Icons.send),
              ),
            ],
          ),
        ),
  );
}

Widget customMessageContainer(String email, String msg) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Row(
        mainAxisAlignment: email == "Abdullahbutt@gmail.com"
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: new Container(
              width: StyleClass.size!.width * 0.7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "$msg",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: email == "Abdullahbutt@gmail.com"
                      ? Colors.green
                      : Colors.brown,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
      new Row(
        mainAxisAlignment: email == "Abdullahbutt@gmail.com"
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: <Widget>[
          new Text("10:05 am"),
          email == "Abdullahbutt@gmail.com"?Icon(Icons.check):Icon(Icons.person),
        ],
      )
    ],
  );
}
