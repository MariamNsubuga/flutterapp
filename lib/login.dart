import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            // color: Colors.black,
            child: ListView(
          children: [
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 100,
              width: 100,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Text("Test App"),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter Username",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              // keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text("LOGIN"))
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     color: Colors.red,
            //     child: Text("Good Afternoon"),
            //   ),
            // ),
            // Container(
            //   color: Colors.green,
            //   child: Text("Good Evening"),
            //   alignment: Alignment.bottomCenter,
            //   padding: EdgeInsets.all(20.0),
            // )
          ],
        )),
      ),
    );
  }
}
