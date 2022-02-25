import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());


const String _sentenceOne =
    'Stateful widgets are widgets that store their state in variables that are called properties.';
const String _sentenceTwo =
    'Changing the properties causes the widget to be rebuilt.';

Color _color1 = Colors.blue;
Color _color2 = Colors.deepOrangeAccent;

String _sentence = _sentenceOne;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factornest.com | InheritedWidget Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Factornest.com | InheritedWidget Example'),
          backgroundColor: Colors.teal,
        ),
        body: InheritedWidgetExample(),
      ),
    );
  }
}

class InheritedWidgetExample extends StatefulWidget {
  @override
  _InheritedWidgetExampleState createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  final Random _random = Random();
  int _score = 10;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Info(
            score: _score,
            sentence: _sentence,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.score),
                SentenceBox(),
              ],
            ),
          ),
          OutlinedButton(
            child: const Text('Change'),
            onPressed: () {
              setState(() {
                //  _score = _random.nextInt(100);
                if (_sentence == _sentenceOne) {
                  _sentence = _sentenceTwo;
                } else {
                  _sentence = _sentenceOne;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

class Info extends InheritedWidget {
  const Info({
    Key key,
    @required this.score,
    @required Widget child,
    @required this.sentence,
  })  : assert(score != null),
        assert(child != null),
        super(key: key, child: child);

  final int score;
  final String sentence;

  static Info of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }

  @override
  bool updateShouldNotify(covariant Info oldWidget) {
    return oldWidget.sentence != sentence;
  }
}

class SentenceBox extends StatelessWidget {
  const SentenceBox();

  @override
  Widget build(BuildContext context) {
    print('CurrentScore rebuilt');
    final Info info = Info.of(context);

    return Container(
      child: Text(info?.sentence.toString()),
    );
  }
}
