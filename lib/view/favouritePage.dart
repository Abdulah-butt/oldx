import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/customWidgets.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: appBarTitle("Favourites"),
          centerTitle: true,
          backgroundColor: Color(appbarColor),
          leading: Icon(Icons.favorite_outline),
          elevation: 1,
          //iconTheme: IconThemeData(color: Colors.green),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return customAdWidet(context);
          },
        ),
      ),
    );
  }
}
