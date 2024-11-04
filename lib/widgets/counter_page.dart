import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void incrementCounter(){
    // setState(() {
    //   counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            Text(
              "$counter",
              style: TextStyle(color: Colors.white, fontSize: 250),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter ++;
                });
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
