import 'package:counter_app/screens/counter_screen.dart';
import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );

  }

}