import 'package:example_flutter/Login2/ButtonCircle.dart';
import 'package:example_flutter/Login2/CustomTextFild2.dart';
import 'package:flutter/material.dart';

class LoginSignUpWidget extends StatefulWidget {
  @override
  _LoginSignUpWidgetState createState() => _LoginSignUpWidgetState();
}

class _LoginSignUpWidgetState extends State<LoginSignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.yellow.withOpacity(0.5),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
            ),
            CustomTextFild(
              label: "Display Name",
              hint: "joao123",
            ),
            CustomTextFild(
              label: "Email",
              hint: "Exemple@hotmail.com",
            ),
            CustomTextFild(
              label: "Password",
              hint: "**********",
            ),
            Container(
              height: 50,
            ),
            ButtonCircle(
              label: "Create Account",
              borderColor: Colors.black,
              textColor: Colors.black,
              color: Colors.white,
              onTap: () {},
            ),
            Container(
              height: 50,
            )
          ],
        ));
  }
}
