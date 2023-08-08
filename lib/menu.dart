import 'package:educonnect/constant.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget{
  //static String routeName = 'profile';
  const menu({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TextWhite,
      body: Container(
        child: const Text('Menu'),
      ),
    );
  }
}