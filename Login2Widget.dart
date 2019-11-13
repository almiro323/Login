import 'package:example_flutter/Login2/ButtonCircle.dart';
import 'package:example_flutter/Login2/Login2ChangePassword.dart';
import 'package:example_flutter/Login2/Login2SignInWidget.dart';
import 'package:example_flutter/Login2/Login2SignUpWidget.dart';
import 'package:example_flutter/Login2/ProviderControler.dart';
import 'package:flutter/material.dart';

class Login2Widget extends StatefulWidget {
  @override
  _Login2WidgetState createState() => _Login2WidgetState();
}

class _Login2WidgetState extends State<Login2Widget> {
  PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
            "https://i.pinimg.com/736x/63/66/bf/6366bf14da5bdf904059182a2a3bfab5.jpg",
            fit: BoxFit.cover),
        ProviderConntroler(
          controller: controller,
          child: PageView(
            controller: controller,
            children: <Widget>[
              Login2PageWidget(),
              Login2SignInWidget(),
              LoginSignUpWidget(),
              ChangePassword(),
            ],
          ),
        ),
      ],
    ));
  }
}

class Login2PageWidget extends StatefulWidget {
  @override
  _Login2PageWidgetState createState() => _Login2PageWidgetState();
}

class _Login2PageWidgetState extends State<Login2PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 280,
          ),
          ButtonCircle(
            label: "LOGIN",
            textColor: Colors.black,
            color: Colors.yellow[600],
            borderColor: Colors.black,
            onTap: () {
              ProviderConntroler.of(context).controller.animateToPage(1,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 300));
            },
          ),
          Container(
            height: 20,
          ),
          ButtonCircle(
            label: "REGISTER",
            textColor: Colors.black,
            borderColor: Colors.black,
            onTap: () {
              ProviderConntroler.of(context).controller.animateToPage(2,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 300));
            },
          ),
          Container(
            height: 200,
          )
        ],
      ),
    );
  }
}
