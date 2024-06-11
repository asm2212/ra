import 'package:flutter/material.dart';
import 'package:ra/components/my_bottom_nav_bar.dart';
import 'package:ra/constants.dart';
import 'package:ra/screens/home/components/body.dart';
import 'package:ra/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        TextButton( // Changed FlatButton to TextButton
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
