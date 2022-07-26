import 'package:evo_app/screens/details_page.dart';
import 'package:evo_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.pink[200],
      ),
      initialRoute : "/home_page",
      routes: {
        "/home_page" :(context) => home_page(),
        "/details_page" : (context)=> details_page(),
      },
    );
  }
}

