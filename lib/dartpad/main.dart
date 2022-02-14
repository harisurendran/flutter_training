import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' There is not state in this screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('View only screens that dot  not have state.'),
            Text('Stays the same no matter what you do.'),
            Text('Use this for screens that are not going to change.'),
          ],
        ),
      ),
    );
  }
}
