import 'package:app_test/row.dart';
// import 'package:app_test/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'), //use this if you are using methods this calls a method
      home:
          const RowsClass(), 
          // const TestClass(),// use this if you are using another page this calls the page or screen
    );
  }
}
