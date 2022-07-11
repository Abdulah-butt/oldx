import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/customWidgets.dart';

final imgUrl='https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';


class AdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(bodyColor),
        appBar: new AppBar(
          title: new Text("Create Ad",style: new TextStyle(color: Colors.black),),
          elevation: 1,
          leading: Icon(Icons.add),
          backgroundColor: Color(appbarColor),
          centerTitle: true,
        ),
        body:Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width:StyleClass.size!.width,
            height: StyleClass.size!.height,

            child: SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Text("Location",style: headingStyle(),),
                  SizedBox(height: 10,),
                  new Container(
                    height: StyleClass.size!.height*0.05,
                    color:Color(productboxColor),
                    child: Center(child: new Text("Select Location",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 10,),
                  new Text("Category",style: headingStyle(),),
                  SizedBox(height: 10,),
                  new Container(
                    height: StyleClass.size!.height*0.05,
                    color:Color(productboxColor),
                    child: Center(child: new Text("Select Category",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 10,thickness: 3,),
                  new Text("Add photos (upto 5)",style: headingStyle(),),
                  customImagesRow(),
                  SizedBox(height: 10,),
                  itemDetailsForm(),
                  SizedBox(height: 10,),
                  customButton("Create AD",(){}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// user uploaded images of product
Widget customImagesRow(){
  return Row(
    children: <Widget>[
      Container(
        height: 75,
        width: 100,
        color: Color(productboxColor),
        child: Icon(Icons.image),
      ),
      Expanded(
        child: Container(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder:(context,index){
              return customImageBox();
            },
          ),
        ),
      ),
    ],
  );
}

Widget customImageBox(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('$imgUrl')),
      ),
    ),
  );
}


// item details while uploading item
Widget itemDetailsForm(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      new Text("Item details",style: headingStyle(),),
      new Form(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            customDetailsTextField(StyleClass.size!.width,60,"\t\tTitle",TextInputType.multiline),
            customDetailsTextField(StyleClass.size!.width,60,"\t\tPrice",TextInputType.number),
            customDetailsTextField(StyleClass.size!.width,60,"\t\tPhone",TextInputType.phone),
            customDetailsTextField(StyleClass.size!.width,60,"\t\tCondition",TextInputType.multiline),
            customDetailsTextField(StyleClass.size!.width,60,"\t\tFull Address",TextInputType.multiline),
            customDetailsTextField(StyleClass.size!.width,120,"\t\tDescription",TextInputType.multiline),
          ],
        ),
      ),

    ],
  );
}


// textfield for item details
Widget customDetailsTextField(double _width,double _height,String _hint,TextInputType _keyboardtype){
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      width: _width,
      height: _height,
      child: new TextFormField(
        decoration: InputDecoration(
            labelText: _hint,
            border: InputBorder.none,
        ),
          keyboardType:_keyboardtype,
        maxLines: null,
      ),
      decoration: BoxDecoration(
        color: Color(productboxColor),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}