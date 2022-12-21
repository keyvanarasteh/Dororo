// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:dororo/anasayfa/Anasayfa.dart';
import 'package:flutter/material.dart';

class giris extends StatefulWidget {
  const giris({super.key});

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
  
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color:Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Stack(fit: StackFit.expand ,
          children: [
            Positioned(

              child: Image.asset('lib/image/Hardware/hardware3.png',fit: BoxFit.scaleDown,),
              ),

            Positioned(
              height: 50,
              width: 250,
              bottom: screenheight/10,
              left: screenWidth/2 - 120,
               
               child: InkWell(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text("Start Shopping"),
                  Icon(Icons.send)
                  ],
                  ),
                  onTap: () =>   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => anasayfa()),
              ),
               ),
            ),
            
          ],
        ),
          
        
      ),
    );
  }
}