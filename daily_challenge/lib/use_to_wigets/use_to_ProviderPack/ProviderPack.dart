import 'package:flutter/material.dart';
import 'stateData.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<StateData>(
    create: (BuildContext context) {
      return StateData();
    },
    child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('callback kullanımı'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: SolWidgetA()),
            Expanded(child: SagWidgetA())
          ],
        ),
      ),
    );
  }
}

class SolWidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Consumer<StateData>(
        builder: (context, data, child) {
          return Column(
            children: [
              Text(
                'Sol Widget',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sehir: ${data.sehir} ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mehle: ${data.mehle} ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Olke: ${data.olke} ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SagWidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        Text(
          'SagWidget A',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetB()
      ]),
    );
  }
}

class SagWidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      color: Colors.purple,
      child: Column(children: [
        Text(
          'SagWidget B',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetC()
      ]),
    );
  }
}

class SagWidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      width: 160,
      child: Column(
        children: [
          Text(
            'SagWidget C',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Şehir: ${Provider.of<StateData>(context).sehir} ',
            style: TextStyle(fontSize: 20),
          ),
          TextField(onChanged: (input) {
            Provider.of<StateData>(context, listen: false).newCity(input);
          })
        ],
      ),
    );
  }
}