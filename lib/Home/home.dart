import 'package:educonnect/constant.dart';
import 'package:educonnect/menu.dart';
import 'package:educonnect/screen/achievment.dart';
import 'package:educonnect/screen/attendance.dart';
import 'package:educonnect/screen/chatbox.dart';
import 'package:educonnect/screen/fee.dart';
import 'package:educonnect/screen/leave.dart';
import 'package:educonnect/screen/progress.dart';
import 'package:educonnect/screen/result.dart';
import 'package:educonnect/screen/timetable.dart';
import 'package:flutter/material.dart';
import 'package:educonnect/screen/profile.dart';

class home extends StatelessWidget {
  static String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EduConnect',
          style: TextStyle(color: Primary, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: TextWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => menu(),));
          },
          icon: Icon(Icons.menu,color: Primary,),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.0,
          ),
          Expanded(
            child: Container(
                color: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: OtherColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(DefaultPadding * 2),
                        topRight: Radius.circular(DefaultPadding * 2),
                      )),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeFild(
                            onPress: () {
                              // Navigator.pushNamed(context, profile.routeName);
                              Navigator.push(context,MaterialPageRoute(builder: (context) => profile(),));
                            },
                            icon: 'assets/icons/user.png',
                            title: 'Profile',
                          ),
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => timetable(),));
                            },
                            icon: 'assets/icons/schedule.png',
                            title: 'Time Table',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => result(),));
                            },
                            icon: 'assets/icons/result.png',
                            title: 'Result',
                          ),
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => chat(),));
                            },
                            icon: 'assets/icons/chat.png',
                            title: 'Chat Box',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => attendance(),));
                            },
                            icon: 'assets/icons/attendance.png',
                            title: 'Attendance',
                          ),
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => fee(),));
                            },
                            icon: 'assets/icons/receipt.png',
                            title: 'Fees',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => leave(),));
                            },
                            icon: 'assets/icons/leave.png',
                            title: 'Leave',
                          ),
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => progress(),));
                            },
                            icon: 'assets/icons/progress.png',
                            title: 'Progress',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeFild(
                            onPress: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => achievment(),));
                            },
                            icon: 'assets/icons/achievments.png',
                            title: 'Achievement',
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class HomeFild extends StatelessWidget {
  final VoidCallback onPress;
  final String icon;
  final String title;

  const HomeFild(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 25, left: 5),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: Primary,
          borderRadius: BorderRadius.circular(DefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 60,
              width: 60,
              color: OtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: OtherColor),
            ),
            //SizedBox(height: DefaultPadding / 3,),
          ],
        ),
      ),
    );
  }
}
