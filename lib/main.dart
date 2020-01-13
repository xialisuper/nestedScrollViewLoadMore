import 'package:flutter/material.dart';
import 'package:route/route/routes.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materaia app',
      // home: PageOne(),
      initialRoute: MyRoute.pageOne,
      onGenerateRoute: MyRoute.onGenerateRoute,
      navigatorKey: MyRoute.navigatorKey,
    );
  }
}
