import 'package:flutter/material.dart';

const appbarColor=0xffffffff;
const bodyColor=0xffffffff;
const appNameColor=0xff70ce95;
const appSubtagName=0xff3a566f;
const buttonColor=0xff70ce95;
const buttonTextColor=0xffffffff;

const productboxColor=0xffe6e3e3;
const textColor=0xffffffff;
const buttonbgColor=0xff344955;
const double borderRadius=30;
const buttonfgColor=0xffffffff;
const iconColor=0xffd4dbca;
const dividerColor=0xffffcc80;
const headingTextColor=0xff000000;
const subHeadingTextColor=0xff6b6766;
const deatilsBoxColor=0xffa19b8c;

const fontFamilyName='Pacifico';

class StyleClass{
  static Size? size;
}




BoxDecoration boxDecoration(Color _color,double _radius ){
  return BoxDecoration(
    color: _color,
    borderRadius: BorderRadius.circular(_radius),
  );
}

TextStyle headingStyle(){
  return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(headingTextColor)
  );
}

TextStyle buttonTextStyle(){
  return TextStyle(
      color: Color(buttonfgColor),
      fontSize: 14,
      fontWeight: FontWeight.bold
  );
}


ButtonStyle buttonStyle(Color color){
  return ElevatedButton.styleFrom(
    primary:color,
    elevation: 5,
    shape: RoundedRectangleBorder( //to set border radius to button
        borderRadius: BorderRadius.circular(borderRadius)
    ),
  );
}


TextStyle subHeadingStyle(){
  return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(subHeadingTextColor),
  );
}