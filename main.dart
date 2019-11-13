import 'package:example_flutter/Login2/Login2Widget.dart';
import 'package:example_flutter/Projetos/ClipOval.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(App());
}
// column "Widgets" na vertical
// row "Widgets" na horizontal
// stack "empilhar widget" (um sobre o outro),sobresair sobre outro widget
// padding = espaçamento laterais
// inkwell = dar a impressao de aperta o botao.

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(accentColor: Colors.blue),
        home: Login2Widget());
  }
}
