import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure to use flutter_svg package
import 'package:ra/components/my_bottom_nav_bar.dart';
import 'package:ra/screens/home/components/body.dart';
import 'package:ra/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig with context
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      centerTitle: true, // Center the title
      title: Image.asset("assets/images/logo.png"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          width: SizeConfig.defaultSize * 0.5, // 5
        )
      ],
    );
  }
}
