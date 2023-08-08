import 'dart:async';
import 'package:educonnect/login/login.dart';
import 'package:educonnect/Home/home.dart';
import 'package:educonnect/constant.dart';
import 'package:educonnect/main.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  static String routeName = 'splash';
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => login(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context,login.routeName, (route) => false);
    });
    return Scaffold(
      body: Container(
        color: Primary,
        child: Center(
            child: Text(
              'EduConnect',
              style: TextStyle(fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, letterSpacing: 1.5),
            )),
      ),
    );
  }
}
