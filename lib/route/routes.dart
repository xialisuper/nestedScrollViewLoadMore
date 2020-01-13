import 'package:auto_route/auto_route_annotations.dart';
import 'package:route/page_one.dart';
import 'package:route/page_three.dart';
import 'package:route/page_two.dart';

@autoRouter
class $MyRoute {
  @initial
  PageOne pageOne;
  PageTwo pageTwo;
  PageThree pageThree;
}
