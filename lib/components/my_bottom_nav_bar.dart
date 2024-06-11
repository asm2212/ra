import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:ra/constants.dart';
import 'package:ra/models/NavItem.dart';
import 'package:ra/size_config.dart';

class MyBottomNavBar extends StatelessWidget {
  final Key? key;
  
  const MyBottomNavBar({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3), // 30
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30,
              color: Color(0xFF4B1A39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.items.length,
              (index) => buildIconNavBarItem(
                isActive: navItems.selectedIndex == index,
                icon: navItems.items[index].icon,
                press: () {
                  navItems.changeNavIndex(index: index); // Corrected typo here
                  // Ensure the destination exists before navigating
                  if (navItems.items[index].destinationChecker()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navItems.items[index].destination,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavBarItem({
    required String icon,
    required VoidCallback press,
    bool isActive = false,
  }) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        color: isActive ? kPrimaryColor : Color(0xFFD1D4D4),
        height: 22,
      ),
      onPressed: press,
    );
  }
}
