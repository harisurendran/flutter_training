import 'package:flutter/material.dart';

void main() => runApp(MyApp());

String sentence1 = 'Screens that change state are called stateful widgets.';
String sentence2 =
    'Stateful widgets are widgets that store their state in variables that are called properties.';
String sentence3 = 'Changing the properties causes the widget to be rebuilt.';
Color _color1 = Colors.blue;
Color _color2 = Colors.deepOrangeAccent;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factornest.com | Stateful Widget Learning',
      debugShowCheckedModeBanner: false,
      home: StatefulScreen(),
    );
  }
}

class StatefulScreen extends StatefulWidget {
  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('A Stateful Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: _color1,
                child: Text(sentence1),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.deepPurpleAccent,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _color2,
                    width: 2,
                  ),
                ),
                child: Text(sentence2),
              ),
              ElevatedButton(onPressed: onPressed, child: Text('Change Color'))
            ],
          ),
        ));
  }

  void onPressed() {
    sentence1 = sentence3;
    setState(() {
      if (_color1 == Colors.blue) {
        _color1 = Colors.deepOrangeAccent;
      } else {
        _color1 = Colors.blue;
      }
    });
  }
}
