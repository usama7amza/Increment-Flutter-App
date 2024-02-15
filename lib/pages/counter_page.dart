// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class counter_page extends StatefulWidget {
  const counter_page({super.key});

  @override
  State<counter_page> createState() => _counter_pageState();
}

class _counter_pageState extends State<counter_page> {
  //varibal
  int _counter = 0;

//method
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  _Decrement() {
    setState(() {
      _counter--;
    });
  }

  _resetCount() {
    setState(() {
      _counter = 0;
    });
  }

  //ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'counter app',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you push the butten that time :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: _increment,
                child: Text(
                  'Increment !',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
            ElevatedButton(onPressed: _Decrement, child: Text('DECREMENT..')),
            ElevatedButton(onPressed: _resetCount, child: Text('RESET'))
          ],
        ),
      ),
    );
  }
}
