import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextFild({Key key, this.label, this.hint}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          TextField(
            autofocus: false,
            decoration: InputDecoration(
                hintText: hint,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white30)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70))),
          )
        ],
      ),
    );
  }
}
