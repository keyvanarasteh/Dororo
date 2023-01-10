// ignore_for_file: unused_import, sized_box_for_whitespace, prefer_const_constructors, camel_case_types, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, use_key_in_widget_constructors, depend_on_referenced_packages, prefer_interpolation_to_compose_strings, dead_code, duplicate_import

import 'dart:io';
import 'package:dororo/FinalFazlaWidgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dororo/Anasayfa.dart';
import 'package:dororo/FinalFazlaWidgets.dart';
import 'package:dororo/sepet.dart';
import 'package:flutter/material.dart';
import 'package:dororo/data.txt';
class giris extends StatefulWidget {
  const giris({super.key});
  
  @override
  State<giris> createState() => _girisState();
}
 

 

class _girisState extends State<giris> {
  bool select1 = true;
  bool select2 = false;
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: 
                  [Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        'lib/image/Hardware/hardware3.png',
                        height: 300,
                        width: 300,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 200,
                                width: 120,
                                decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(25),
                                color: select1 == true ? Colors.amberAccent : Colors.transparent,),
                                child: ChoiceChip(
                                  label: Text("Giriş"),
                                  onSelected: (value) {
                                    if (value) {
                                      select2 = false;
                                    }
                                    select1 = value;
                                    setState(() {});
                                  },
                                  selectedColor: Colors.orangeAccent,
                                  selected: select1,
                                ),
                              ),
                              Container(
                                height: 200,
                                width: 120,
                                decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(25),
                                color: select2 == true ? Colors.amberAccent : Colors.transparent,),
                                child: ChoiceChip(
                                  label: Text("Kayıt Ol"),
                                  onSelected: (value) {
                                    if (value) {
                                      select1 = false;
                                    }
                                    select2 = value;
                                    setState(() {});
                                  },
                                  selected: select2,
                                  selectedColor: Colors.orangeAccent,
                                  
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        select1 == true ? Column(
                          children: [
                            Container(
                              width: 250,
                              child: input("Username",Icon(Icons.people)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              child:  input("Password",Icon(Icons.lock))
                            ),
                            
          
                          ],
                        ):
                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 250,
                              height: 50,
                              child: input("Username",Icon(Icons.people)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,height: 50,
                              child: input("Email",Icon(Icons.mail)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,height: 50,
                              child:  input("Password",Icon(Icons.lock))
                            ),
                          ],
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
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => select2 == false ? sepet() : widgets() ),
                          
                        );
                        
                        }
                      ),
                    ),
                  ]),
                ],
          )),
    );
  }

  TextField input(String a, Icon b) {
    return TextField(
                    controller: a =="Username" ? myController : a=="Email" ? myController3 : myController2,
                      
                        decoration: InputDecoration(
                      labelText: a,
                      prefixIcon: b,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              BorderSide(width: 2, color: Colors.brown)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              BorderSide(width: 2, color: Colors.brown)),
                    ));
  }
}
