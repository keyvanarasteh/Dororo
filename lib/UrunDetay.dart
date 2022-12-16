// ignore_for_file: non_constant_identifier_names, no_logic_in_create_state, prefer_const_constructors

import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  const Detay({super.key});

  @override
  State<Detay> createState() => _DetayState(AD: "",  RESIM: "hardware3.png", RENK: Colors.black54);
}

class _DetayState extends State<Detay> {
  
  final String AD;
  final String RESIM;
  final Color RENK;
  _DetayState({ required this.AD,required this.RENK,required this.RESIM});
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width ;
    var screenheight = MediaQuery.of(context).size.height ;
    return Scaffold(
      backgroundColor: RENK,
      body: Column(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('lib/image/$RESIM', fit: BoxFit.cover, width: 100,height: 100,)),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 75,
                height: 35,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black87),
                child: Center(child: Text("55,60 \$",style: TextStyle( color: Colors.white),)),
              ),
              Container(
                width: 200,
                height: 35,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white),
                child: Center(child: Text("Puan Ver",style: TextStyle( color: Colors.black, ),)),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: screenwidth/2 + 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black),),
            child: Text("", maxLines: 20, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
          ),

        ],
      )
      );
  }
}