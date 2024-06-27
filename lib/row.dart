import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowsClass extends StatelessWidget {
  const RowsClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rows inside a Row",
          style: TextStyle(color: Colors.green),
        ),
        elevation: 50.0,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 198, 227, 241),
        ),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("first"),
                  ],
                ),
                Column(
                  children: [
                    BackButton(
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("third"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("fourth"),
                  ],
                ),
                Column(
                  children: [
                    Text("fifth"),
                  ],
                ),
                Column(
                  children: [
                    Text("sixth"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.access_alarms_rounded)],
                ),
                Column(
                  children: [
                    Text("eighth"),
                  ],
                ),
                Column(
                  children: [
                    Text("ninth"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
