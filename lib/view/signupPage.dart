import 'package:flutter/material.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/view/customWidgets.dart';


final _email = new TextEditingController();
final _phone=new TextEditingController();
final _password = new TextEditingController();


class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    StyleClass.size = size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(bodyColor),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: size.height * 0.03)),
                  appBarTitle("OldX"),
                  new Text("Change your old things to X",
                      style: TextStyle(
                          color: Color(appSubtagName),
                          fontFamily: fontFamilyName),
                      textAlign: TextAlign.center),
                  new SizedBox(
                    height: 40,
                  ),
                  customTextField("Email", Icon(Icons.person_outline),
                      "", false, _email),
                  new SizedBox(
                    height: 20,
                  ),
                  customTextField(
                      "Phone", Icon(Icons.phone_android), "", false,_phone),
                  new SizedBox(
                    height: 20,
                  ),
                  customTextField(
                      "Password", Icon(Icons.keyboard), "", true,_password),
                  new SizedBox(
                    height: 20,
                  ),
                  customButton("Sign Up  >>", () {}),
                  new SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Already have an account? ',
                              style:TextStyle(color: Colors.black54)),
                          TextSpan(text: 'Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
