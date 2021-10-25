import 'package:flutter/material.dart';
import 'loveapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: Colors.pink.shade500),
        title: 'Bói tình yêu bằng dãy số',
        home: Scaffold(body: BoiApp()));
  }
}
