import 'package:flutter/material.dart';
import 'colors.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      alignment: Alignment.bottomCenter,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(
            icon: Icons.arrow_back_ios,
          ),
          Text('Playing Now',style: TextStyle(fontSize: 20,color: darkPrimaryColor,fontWeight: FontWeight.w300),),
          NavBarItem(
            icon: Icons.list,
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
        ],
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }
}
