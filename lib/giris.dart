// ignore_for_file: unused_import, sized_box_for_whitespace, prefer_const_constructors, camel_case_types, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:dororo/anasayfa/Anasayfa.dart';
import 'package:dororo/sepet.dart';
import 'package:flutter/material.dart';

class giris extends StatefulWidget {
  const giris({super.key});

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
  bool select1 = false;
  bool select2 = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.asset(
                    'lib/image/Hardware/hardware3.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ChoiceChip(
                            label: Text("Giriş"),
                            onSelected: (value) {
                              if (value) {
                                select2 = false;
                              }
                              select1 = value;
                              setState(() {});
                            },
                            selectedColor: Colors.orange,
                            selected: select1,
                          ),
                          ChoiceChip(
                            label: Text("Kayıt Ol"),
                            onSelected: (value) {
                              if (value) {
                                select1 = false;
                              }
                              select2 = value;
                              setState(() {});
                            },
                            selected: select2,
                            selectedColor: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(
                        labelText: "Username ",
                        prefixIcon: Icon(Icons.people),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(width: 2, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(width: 2, color: Colors.brown)),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(width: 2, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(width: 2, color: Colors.brown)),
                      )),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("Start Shopping"), Icon(Icons.send)],
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sepet()),
                    ),
                  ),
                ),
              ])),
    );
  }
}
