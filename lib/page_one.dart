import 'package:flutter/material.dart';
import 'package:route/route/routes.gr.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Icon(Icons.access_alarms),
          onPressed: () {
            return Navigator.of(context).pushNamed(MyRoute.pageThree,
                arguments: PageThreeArguments(
                  index: 1,
                ));
          },
        ),
      ),
    );
  }
}
