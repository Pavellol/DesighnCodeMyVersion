import 'package:flutter/material.dart';
import 'package:flutter_application_desighn_code/components/searchfield_widget.dart';
import 'package:flutter_application_desighn_code/components/sidebar_button.dart';
import 'package:flutter_application_desighn_code/screens/profile_screen.dart';
import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({required this.triggerAnimation});

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: CircleAvatar(
              // radius: 18.0,
              backgroundImage: AssetImage('asset/images/profile.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}