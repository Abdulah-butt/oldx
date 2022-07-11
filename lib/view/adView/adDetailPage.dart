import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/customWidgets.dart';

class AdDetailScreen extends StatefulWidget {
  @override
  _AdDetailScreenState createState() => _AdDetailScreenState();
}
final imgUrl='https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg/1200px-Freightliner_M2_106_6x4_2014_%2814240376744%29.jpg';


class _AdDetailScreenState extends State<AdDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Color(productboxColor),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: StyleClass.size!.height*0.35,
                  width: StyleClass.size!.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgUrl),
                      fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: customAppbar(),
              ),

              Positioned(
                left:0,
                top: StyleClass.size!.height*0.33,
                child: Container(
                  height: StyleClass.size!.height,
                  width: StyleClass.size!.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  ),
                  child: productDetailWidget(),
                ),
              ),
            ],
          ),
        )
    );
  }
}


Widget productDetailWidget(){
  return Padding(
    padding: EdgeInsets.all(20),
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Text("New Car",style:headingStyle(),),
        Text("Sep 13 at 12:14 PM",style:TextStyle(color: Colors.grey),),
        Text("\$ 6000",style:TextStyle(fontSize: 18,color: Colors.green),),
        SizedBox(height: 20,),
        OwnerInfoContainer(),
        SizedBox(height: 20,),
        Text("Description",style:headingStyle(),),
        SizedBox(height: 10,),
        DiscriptionContainer(),
        Divider(thickness: 3,),
        Text("More Info",style:headingStyle(),),
        SizedBox(height: 10,),
        MoreInfoContainer(),
        SizedBox(height: StyleClass.size!.height*0.05,),
        customButton("Contact Owner",(){}),

      ],
    ),
  );
}

Widget OwnerInfoContainer(){
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Color(productboxColor),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: new ListTile(
        leading: CircleAvatar(child: Icon(Icons.person_outline),backgroundColor: Colors.grey,),
        title: new Text("MD. Rehan Mehmood",style: headingStyle(),),
        subtitle: new Text("Abdul Mannan Butt,Street Maseet e khan,Muslim Colony Pasrur, Sialkot"),
        trailing: new Icon(Icons.forward),
      ),
    ),
  );
}

Widget DiscriptionContainer(){
  return Container(
    child: new Text(
      "Cybertruck is built with an exterior shell made for ultimate durability and passenger protection. Starting with a nearly impenetrable exoskeleton, every component is designed for superior strength and endurance, from Ultra-Hard 30X Cold-Rolled stainless-steel structural skin to Tesla armor glass."
    ),
  );
}

Widget MoreInfoContainer(){
  return Container(
    child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            new Text("Condition"),
            SizedBox(height: 10,),
            new Text("Category"),
          ],
        ),
        SizedBox(width: 20,),
        Column(
          children: <Widget>[
            new Text("Used"),
            SizedBox(height: 10,),
            new Text("Trucks"),
          ],
        ),
      ],
    ),
  );
}

Widget customAppbar(){
  return Container(
    height:70,
    width: StyleClass.size!.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(

          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(50),
          ),
            child: new IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_outlined),color: Colors.white,)
        ),
        Container(

            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
            child: new IconButton(onPressed: (){}, icon:Icon(Icons.share),color: Colors.white,)
        ),
      ],
    ),
  );
}
