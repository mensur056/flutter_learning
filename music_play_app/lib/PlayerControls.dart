import 'package:flutter/material.dart';

import 'colors.dart';

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(
            icon: Icons.repeat,
          ),
          Controls(
            icon: Icons.skip_previous,
          ),
          PlayControl(),
          Controls(
            icon: Icons.skip_next,
          ),
          Controls(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(20, 8),
              spreadRadius: 3,
              blurRadius: 25),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20)
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: darkPrimaryColor, shape: BoxShape.circle),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Center(
                child:
                    Icon(Icons.play_arrow, size: 60, color: darkPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;

  const Controls({ required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 59,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(20, 8),
              spreadRadius: 3,
              blurRadius: 25),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20)
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: darkPrimaryColor, shape: BoxShape.circle),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Center(child: Icon(icon)),
            ),
          )
        ],
      ),
    );
  }
}
