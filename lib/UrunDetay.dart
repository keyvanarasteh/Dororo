// ignore_for_file: non_constant_identifier_names, no_logic_in_create_state, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, prefer_adjacent_string_concatenation, unnecessary_string_interpolations, use_key_in_widget_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:dororo/list.dart';
import 'package:dororo/sepet.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  const Detay({required this.add,required this.renkk,required this.resimm,required this.fiyatt,});
  final String add;
  final String resimm;
  final Color renkk;
  final double fiyatt;

  @override
  State<Detay> createState() => _DetayState(AD: add,  RESIM: resimm, RENK: renkk, fiyat: fiyatt );
}

class _DetayState extends State<Detay> {
  final double fiyat;
  final String AD;
  final String RESIM;
  final Color RENK;
  _DetayState({ required this.AD,required this.RENK,required this.RESIM,required this.fiyat});
  @override
  Widget build(BuildContext context) {

    var screenwidth = MediaQuery.of(context).size.width ;
    var screenheight = MediaQuery.of(context).size.height ;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black54,
      body: ListView(
        children: 
          [Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Center(
                child: Container(
                  
                  height: 400,
                  width: 400,
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('lib/image/tools/$RESIM', width: 100,height: 100,)),
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
                    child: Center(child: Text( "$fiyat" + "\$",style: TextStyle( color: Colors.white),)),
                  ),
                  InkWell(onTap: () {  sepett.add(RESIM);adet.add(1);Navigator.pop(context);},
                  child: Container(width: 40,height: 40, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white),child: Icon(Icons.shopping_basket_rounded))),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white38),
                      child: Center(child: Text("Puan Ver",style: TextStyle( color: Colors.black, ),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: screenwidth/2 + 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black),),
                child: Center(child: Text("$AD", maxLines: 20, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)),
              ),
      
            ],
          ),
        ],
      )
      );
  }
}