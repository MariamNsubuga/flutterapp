import 'package:app_test/login.dart';
import 'package:app_test/map.dart';
import 'package:app_test/home.dart';
import 'package:app_test/mymap.dart';
import 'package:app_test/row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'), //use this if you are using methods this calls a method
        home: const LoginScreen(),
       getPages: [
        GetPage(name: '/login', page: ()=> const LoginScreen()),
        GetPage(name: '/location', page: ()=>  const MapScreen()),
        GetPage(name: '/home', page: ()=> const HomeScreen()),
        GetPage(name: '/map', page: ()=> const MyMapScreen()),
        GetPage(name: '/row', page: ()=> const RowsClass())
        ],
 //     home: const MapClass(),
      // const TestClass(),// use this if you are using another page this calls the page or screen
    );
  }
}
