import 'package:educonnect/Home/home.dart';
import 'package:educonnect/login/login.dart';
import 'package:educonnect/splash.dart';
import 'package:flutter/cupertino.dart';


Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  splash.routeName: (context) => splash(),
  login.routeName: (context) => login(),
  home.routeName: (context) => home(),
};