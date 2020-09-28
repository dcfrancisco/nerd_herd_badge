import 'package:flutter/material.dart';
import 'package:nerd_herd_badge/screens/nerd_herd.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.transparent,
      ),
      home: new NerdHerd(),
    );
  }
}
