import 'package:educonnect/constant.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton({Key? key, required this.onPress, required this.title, required this.iconData}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.only(
            left: DefaultPadding,
            right: DefaultPadding,
            top: DefaultPadding,
          ),
          padding: EdgeInsets.only(right: DefaultPadding),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Secondary,Primary],
              begin: const FractionalOffset(0, 0),
              end: const FractionalOffset(0.5, 0),
              stops: [0,1],
              tileMode: TileMode.clamp,
            ),
            borderRadius : BorderRadius.circular(DefaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(title,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: TextWhite,
              ),),
              Spacer(),
              Icon(iconData,color: TextWhite,size: 30,),
            ],
          )
      ),
    );
  }
}