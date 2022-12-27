// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:dororo/Urun.dart';
import 'package:dororo/UrunDetay.dart';
import 'package:dororo/anasayfa/Anasayfa.dart';
import 'package:dororo/giris.dart';
import 'package:dororo/sepet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: giris());
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
