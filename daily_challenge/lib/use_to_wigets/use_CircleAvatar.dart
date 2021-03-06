import 'package:flutter/material.dart';

void main() => runApp(UseAvatar());

class UseAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/elon.jpg'),
                ),
                Text(
                  'Elon Musk',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Source',
                      color: Colors.tealAccent),
                ),
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    color: Colors.tealAccent,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    title: Text(
                      '+994 50 645 29 39',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Source'),
                    ),
                  ),
                ),SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    color: Colors.tealAccent,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'ElonMusk@gmail.com',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Source'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
