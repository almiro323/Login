import 'package:example_flutter/Login2/ButtonCircle.dart';
import 'package:example_flutter/Login2/CustomTextFild2.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.white.withOpacity(0.7),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
            ),
            CustomTextFild(
              label: "Old Password",
              hint: "*************",
            ),
            CustomTextFild(
              label: "New Password",
              hint: "*************",
            ),
            CustomTextFild(
              label: "Confirm Password",
              hint: "*************",
            ),
            Container(
              height: 50,
            ),
            ButtonCircle(
              label: "Create New Password",
              borderColor: Colors.black,
              textColor: Colors.black,
              color: Colors.yellow[600],
              onTap: () {},
            )
          ],
        ));
  }
}
