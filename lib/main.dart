// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:dororo/UrunDetay.dart';
import 'package:dororo/anasayfa/Anasayfa.dart';
import 'package:dororo/giris.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: giris());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
