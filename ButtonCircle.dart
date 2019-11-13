import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  final Widget icon;
  final double height;
  final Function onTap;

  const ButtonCircle(
      {Key key,
      this.label,
      this.textColor,
      this.color,
      this.backgroundColor,
      this.borderColor,
      this.icon,
      this.height,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        borderRadius: BorderRadius.circular(40),
        color: color,
        child: InkWell(
          onTap: onTap,
          child: ClipRect(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: borderColor == null
                        ? null
                        : Border.all(color: borderColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    icon == null ? Container() : icon,
                    Container(
                      width: 7,
                    ),
                    Text(
                      label,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
