import 'package:flutter/material.dart';
import 'package:route/page_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materaia app',
      home: ExampleWidget(),
    );
  }
}
