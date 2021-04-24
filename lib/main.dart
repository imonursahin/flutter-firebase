import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          onPressed: () {
            FirebaseFirestore.instance
                .collection('olusturdugunuz_koleksiyonun_adi')
                .snapshots()
                .listen((data) {
              print(' length : ${data.docs.length}');
            });
          },
        ),
      ),
    );
  }
}
