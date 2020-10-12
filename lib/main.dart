import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeColor(),
    );
  }
}

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int color = 0;
  void _changefun() {
    setState(() {
      color == 0 ? color++ : color--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color == 1 ? Colors.red : Colors.blue,
        title: Text(color == 1 ? 'Red Color' : 'Blue Color'),
      ),
      body: Scaffold(
        backgroundColor: color == 1 ? Colors.red[200] : Colors.blue[200],
        floatingActionButton: FloatingActionButton(
          onPressed: _changefun,
          backgroundColor: color == 1 ? Colors.red : Colors.blue,
          tooltip: 'Increment',
          child: Icon(Icons.brush),
        ),
      ),
    );
  }
}
