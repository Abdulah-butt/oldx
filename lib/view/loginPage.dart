import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oldx_app/controller/style.dart';
import 'package:oldx_app/model/routes.dart';
import 'package:oldx_app/view/customWidgets.dart';

final _email = new TextEditingController();
final _password = new TextEditingController();

class LoginScreen extends StatelessWidget {
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
                    height: 40,
                  ),
                  customTextField(
                      "Password", Icon(Icons.keyboard), "", true, _password),
                  new SizedBox(
                    height: 20,
                  ),
                  new Text(
                    "Forget Password ?",
                    textAlign: TextAlign.end,
                  ),
                  new SizedBox(
                    height: 20,
                  ),
                  customButton("Login  >>", () {
                    Navigator.pushNamed(context, Routes.MainPage);
                  }),
                  new SizedBox(
                    height: 20,
                  ),
                  OR_Row(),
                  SocialLogin_Row(),
                  new SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, Routes.SignupPage);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Don\'t have an account? ',
                                style:TextStyle(color: Colors.black54)),
                            TextSpan(text: 'Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          ],
                        ),
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

