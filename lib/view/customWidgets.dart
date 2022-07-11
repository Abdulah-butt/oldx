import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oldx_app/api/social_authentication.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/model/detailModel.dart';
import 'package:oldx_app/model/routes.dart';
import 'package:oldx_app/view/adView/adDetailPage.dart';
import 'package:oldx_app/view/homePage.dart';
import 'package:get/get.dart';

import 'myApp.dart';

final imgUrl =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';



Widget customButton(String text,Function() f) {
  return new ElevatedButton(
    onPressed: () {
      f();
    },
    child: new Text(
      "$text",
      style: new TextStyle(fontSize: 22),
    ),
    style: ElevatedButton.styleFrom(
      primary: Color(buttonColor),
      onPrimary: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder( //to set border radius to button
          borderRadius: BorderRadius.circular(borderRadius),
      ),
      fixedSize: Size(10,50),
    ),
  );
}



Widget customTextField(String _label, Icon _icon, String _hintText, bool _hide,
    TextEditingController _controller) {
  return Container(
    child: Column(
      children: <Widget>[
        Align(
            alignment: Alignment.topLeft,
            child: new Text(
              _label,
              style: TextStyle(fontWeight: FontWeight.bold,),
            )),
        Container(
          decoration: new BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2.0, color: Colors.black12),
            ),
          ),
          child: new Row(
            children: <Widget>[
              _icon,
              new SizedBox(
                width: 10,
              ),
              Expanded(
                child: new TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: _hintText,
                      border: InputBorder.none),
                  obscureText: _hide,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget OR_Row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Container(
        width: StyleClass.size!.width*0.3,
        decoration: new BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0, color: Colors.black12),
          ),
        ),
      ),
      SizedBox(width: 50,),
      new Text("OR",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: fontFamilyName),),
      SizedBox(width: 50,),
      new Container(
        width: StyleClass.size!.width*0.3,
        decoration: new BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0, color: Colors.black12),
          ),
        ),
      )
    ],
  );
}


Widget SocialLogin_Row() {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () async {
            UserCredential user=await SocialAuthentication.signInWithFacebook();
            print("Facebook username is");
            print(user.additionalUserInfo!.username);
          },
          child: new Container(
            width: StyleClass.size!.width * 0.4,
            height: StyleClass.size!.height * 0.08,
            decoration: new BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconPlusText(FaIcon(FontAwesomeIcons.facebook),"\t\tFacebook"),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        InkWell(
          child: new Container(
              width: StyleClass.size!.width * 0.4,
              height: StyleClass.size!.height * 0.08,
              decoration: new BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconPlusText(FaIcon(FontAwesomeIcons.google),"\t\tGoogle"),
          ),
          onTap: () async {
            UserCredential user=await SocialAuthentication.signInWithGoogle();
           final user_info=FirebaseAuth.instance.currentUser;
           print("Email is ${user_info!.email}");
            SocialAuthentication.logoutGoogle();
            Get.to(MyApp());
          },
        )
      ],
    ),
  );
}





Widget appBarTitle(String data){
  return Text("$data",
      style: TextStyle(
          color: Color(appNameColor),
          fontSize: 32,
          fontFamily: fontFamilyName,
          fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center);
}

Widget customSearchbar(Icon _icon,TextEditingController _controller,String _hintText){
  return Container(
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:Color(productboxColor)
    ),
    child: new Row(
      children: <Widget>[
        new SizedBox(
          width: 20,
        ),
        _icon,
        new SizedBox(
          width: 10,
        ),
        Expanded(
          child: new TextField(
            controller: _controller,
            decoration: InputDecoration(
                hintText: _hintText, border: InputBorder.none),
          ),
        )
      ],
    ),
  );
}



Widget subCategoryButtons(String text) {
  return Container(
      padding: new EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {},
        child: new Text(
          "$text",
          style: buttonTextStyle(),
        ),
        style: buttonStyle(Color(buttonColor)),
      ));
}


Widget customAdWidet(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetailScreen()));
      },
      child: Container(
        height: StyleClass.size!.height*0.2,
        width: StyleClass.size!.width,
        decoration: BoxDecoration(
          color: Color(productboxColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:StyleClass.size!.height*0.2,
                width: StyleClass.size!.width*0.40,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imgUrl)),
                    borderRadius: BorderRadius.circular(20)
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  new Row(
                    children: <Widget>[
                      new Text("Iphone Fresh Phone",style: new TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: StyleClass.size!.width*0.1),
                      new Icon(Icons.favorite_outline),
                    ],
                  ),
                  SizedBox(height: 20,),
                  IconPlusText(FaIcon(FontAwesomeIcons.mapMarkerAlt),"\t\t 394 Sialkot, Pakistan"),
                  SizedBox(height: 10,),
                  IconPlusText(FaIcon(FontAwesomeIcons.user),"\t\tabdullah butt"),
                  SizedBox(height: 10,),
                  IconPlusText(FaIcon(FontAwesomeIcons.stopwatch),"\t\t 10 min ago")
                ],
              ),
            )
          ],
        ),

      ),
    ),
  );
}



Widget SearchBar(String hint, TextEditingController _searchtxt, Size size) {
  return Row(
    children: <Widget>[
      new Icon(
        Icons.search,
        color: Colors.black,
        size: 40,
      ),
      Container(
        width: size.width * 0.8,
        child: new TextField(
          controller: _searchtxt,
          decoration: InputDecoration(
            hintText: hint,
          ),
        ),
      ),
    ],
  );
}


Widget IconPlusText(FaIcon icon, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      icon,
      new Text("$text",overflow: TextOverflow.fade, softWrap: true,)
    ],
  );
}



Widget ImageContainer(Size size, String imgUrl) {
  return Hero(
    tag: '$imgUrl',
    child: Container(
      height: size.height * 0.13,
      width: size.width * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('$imgUrl'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20)),
    ),
  );
}


Widget customRichText(String label,String value){
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(text: '$label\n\n', style: headingStyle()),
        TextSpan(text: '$value',style: subHeadingStyle()),
      ],
    ),
  );
}