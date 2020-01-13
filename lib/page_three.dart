import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  final int index;

  const PageThree({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('index:$index'),
      ),
    );
  }
}
