import 'package:flutter/material.dart';

class ProviderConntroler extends InheritedWidget {
  final PageController controller;
  final Widget child;

  ProviderConntroler({this.child, this.controller}) : super(child: child);

  static ProviderConntroler of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ProviderConntroler)
        as ProviderConntroler;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
