import 'package:flutter/material.dart';
import 'package:app_test/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    // return const Text("Mariam");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test App",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5000.0,
        // backgroundColor: const Color.fromARGB(255, 14, 90, 17),
        backgroundColor: const Color(0xff03967d),
      ),
      drawer:  Navbar(),
      body: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("column"), BackButton(), Text("column")],
        ),
      ),
    );
  }
}
