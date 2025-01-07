import 'package:flutter/material.dart';
import 'package:flutter_application_desighn_code/constants.dart';
import 'package:flutter_application_desighn_code/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kSidebarBackgroundColor,
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -75, 0),
                      child: Image.asset(
                        'asset/illustrations/illustration-14.png',
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -170, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Learn to design\nand code apps",
                            style:
                                kLargeTitleStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Completed courses about the best\ntools and design systems",
                            style: kHeadlineLabelStyle.copyWith(
                                color: Colors.white70),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  transform: Matrix4.translationValues(0, -150, 0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 53.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Log in to",
                          style: kTitle1Style,
                        ),
                        Text(
                          "Start Learning",
                          style: kTitle1Style.apply(color: Color(0xFF5B4CF0)),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
