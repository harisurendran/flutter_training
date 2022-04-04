import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExampleScreen()));
}

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' There is no state in this screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('View only screens that dot  not have state.'),
            const Text('Stays the same no matter what you do on the screen.'),
            const Text('Use this for screens that are not going to change.'),
          ],
        ),
      ),
    );
  }
}
