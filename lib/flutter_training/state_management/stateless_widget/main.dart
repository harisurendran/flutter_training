import 'package:flutter/material.dart';

void main() => runApp(MyApp());

String sentence1 = 'View only screens that dot  not have state.';
String sentence2 =
    'Stays the same no matter what you do. Use this for screens that are not going to change.';
Color _color1 = Colors.blue;
Color _color2 = Colors.deepOrangeAccent;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factornest.com | Stateless Widget Learning',
      debugShowCheckedModeBanner: false,
      home: StatelessScreen(),
    );
  }
}

class StatelessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('A Stateless Widget'),
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
            ],
          ),
        ));
  }
}
