import 'package:flutter/material.dart';
import 'package:quiz_app/Pages/start_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: startPage(),
    );
  }
}
