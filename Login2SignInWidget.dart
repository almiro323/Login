import 'package:example_flutter/Login2/ButtonCircle.dart';
import 'package:example_flutter/Login2/CustomTextFild2.dart';
import 'package:example_flutter/Login2/ProviderControler.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login2SignInWidget extends StatefulWidget {
  @override
  _Login2SignInWidgetState createState() => _Login2SignInWidgetState();
}

class _Login2SignInWidgetState extends State<Login2SignInWidget> {
  @override
  Widget build(BuildContext context) {
    PageController controller = ProviderConntroler.of(context).controller;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      color: Colors.white.withOpacity(0.7),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
            ),
            CustomTextFild(
              label: "Email",
              hint: "Exemple@hotmail.com",
            ),
            CustomTextFild(
              label: "Password",
              hint: "*********",
            ),
            Container(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                ProviderConntroler.of(context).controller.animateToPage(3,
                    curve: Curves.easeInOut,
                    duration: Duration(milliseconds: 300));
              },
              child: Container(
                width: double.infinity,
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: (Colors.black)),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            ButtonCircle(
              label: "Login",
              borderColor: Colors.black,
              textColor: Colors.black,
              color: Colors.yellow[600],
              onTap: () {},
            ),
            Container(
              height: 20,
            ),
            ButtonCircle(
              label: "No account ? Sign Up",
              borderColor: Colors.black,
              textColor: Colors.black,
              onTap: () {
                ProviderConntroler.of(context).controller.animateToPage(3,
                    curve: Curves.easeInOut,
                    duration: Duration(milliseconds: 300));
              },
            ),
            Container(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text("OR CONNECT WITH",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 20,
            ),
            Row(children: <Widget>[
              Expanded(
                child: ButtonCircle(
                  label: "Facebook",
                  color: Colors.blue[800],
                  height: 55,
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 15,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                width: 20,
              ),
              Expanded(
                child: ButtonCircle(
                  label: "Google",
                  color: Colors.red[700],
                  height: 55,
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 15,
                  ),
                  onTap: () {},
                ),
              )
            ]),
          ]),
    );
  }
}
