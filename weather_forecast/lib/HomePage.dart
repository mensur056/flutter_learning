import 'package:flutter/material.dart';
import 'package:weather_forecast/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/c.jpg'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '20° C',
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ankara',
                      style: TextStyle(fontSize: 30),
                    ),
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                    }, icon: Icon(Icons.search))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}