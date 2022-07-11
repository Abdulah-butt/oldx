import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/model/routes.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            SizedBox(height: 50,),
            new ListTile(
              leading: CircleAvatar(child: Icon(Icons.person_outline),
                backgroundColor: Colors.grey,
                radius: 30,),
              title: new Text("M Abdullah Butt", style: headingStyle(),),
              subtitle: new Text("+923401226839"),
            ),
            Divider(thickness: 3,),
            customButtonForDrawer(Icon(Icons.home),"HOME",(){
            }),
            customButtonForDrawer(Icon(Icons.person_outline),"PROFILE",(){}),
            customButtonForDrawer(Icon(Icons.favorite_outline),"FAVOURITE",(){}),
            customButtonForDrawer(Icon(Icons.phone),"CONTACT US",(){}),
            customButtonForDrawer(Icon(Icons.language),"CHANGE LANGUAGE",(){}),
            versionRow(),
          ],
        ),
      ),
    );
  }

}



Widget customButtonForDrawer(Icon _icon,String name,Function f){
  return Row(
    children: <Widget>[
      Expanded(
        child: new ListTile(
          leading: _icon,
          title:Text(name),
          onTap: (){
            f();
          },
        ),
      )
    ],
  );
}

Widget versionRow(){
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(child: Divider(thickness: 1,)),
        Text("\t\tVersion 1.0.0\t\t"),
        Expanded(child: Divider(thickness: 1,)),
      ],
    ),
  );
}