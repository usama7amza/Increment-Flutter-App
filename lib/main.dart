// ignore_for_file: prefer_const_constructors

import 'package:app/pages/counter_Page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: counter_page(),
    );
  }
}
