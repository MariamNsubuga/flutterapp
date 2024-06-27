import 'package:flutter/material.dart';

class TestClass extends StatelessWidget {
  const TestClass({super.key});

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
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("column"),
            BackButton(),
            Text("column")
        
        ],),
      ),
    );
  }
}
