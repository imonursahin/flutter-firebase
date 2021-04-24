import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Kurulumu',
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (ctx, idx) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('I Love Flutter'),
            );
          },
          itemCount: 10,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
