import 'package:educonnect/Home/home.dart';
import 'package:educonnect/components/defaultbutton.dart';
import 'package:educonnect/constant.dart';
import 'package:flutter/material.dart';
import 'package:educonnect/route.dart';

late bool _passwordVisible;

class login extends StatefulWidget {
  static String routeName = 'login';

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(80),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: TextWhite,
                        letterSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(DefaultPadding * 2),
                topRight: Radius.circular(DefaultPadding * 2),
              ),
              color: TextWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.all(DefaultPadding),
              child: Column(
                children: [
                  Form(
                      key:_formkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: DefaultPadding,
                          ),
                          buildEmail(),
                          SizedBox(
                            height: DefaultPadding,
                          ),
                          buildPassword(),
                          SizedBox(
                            height: DefaultPadding,
                          ),
                          DefaultButton(
                            onPress: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, home.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          SizedBox(
                            height: DefaultPadding,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Forget Password',
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Primary, fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: TextBlack,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: 'E-mail',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        RegExp regexp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'please enter text';
        } else if (!regexp.hasMatch(value)) {
          return 'please enter a valid email';
        }
      },
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      obscureText: _passwordVisible,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: TextBlack,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(
              _passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined,
            ),
            iconSize: DefaultPadding,
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter password';
        }
      },
    );
  }
}
