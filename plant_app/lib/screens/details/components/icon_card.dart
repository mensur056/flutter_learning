import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class IconCard extends StatelessWidget {
  final String icon;

  const IconCard({required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(offset: Offset(0, 10), blurRadius: 25),
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            offset: Offset(-15, -15),
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
