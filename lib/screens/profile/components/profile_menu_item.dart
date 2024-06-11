import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String iconSrc;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return InkWell(
      onTap: press, // Calls the provided callback function when tapped
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              SvgPicture.asset(iconSrc), // Displays the icon
              SizedBox(width: defaultSize * 2), // Adds space between icon and text
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6, // Adjusts text size
                  color: kTextColor, // Uses predefined text color
                ),
              ),
              Spacer(), // Expands to fill remaining space
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6, // Adjusts arrow icon size
                color: kTextColor, // Uses predefined text color
              )
            ],
          ),
        ),
      ),
    );
  }
}
