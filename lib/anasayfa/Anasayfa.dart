// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, depend_on_referenced_packages, unnecessary_string_interpolations, use_key_in_widget_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class anasayfa extends StatefulWidget {
  

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.brown[400],
        title: Text("Kategori"),),
      body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.brown[400],
      child: ListView(
        children: 
              [Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kategori(ad: "Anahtar", renk: Colors.pink, resim: "anahtar.png"),
                      Kategori(ad: "Çekiç", renk: Colors.teal, resim: "cekic.png"),
                    ],
                    ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kategori(ad: "Tornavida", renk: Colors.black54 , resim: "tornavida.png"),
                      Kategori(ad: "Matkap", renk: Colors.white60, resim: "matkap.png"),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kategori(ad: "Çivi,Vida", renk: Colors.purple, resim: "civi.png"),
                      Kategori(ad: "Pense", renk: Color.fromARGB(255, 128, 41, 35), resim: "pense.png"),
                    ],
                  ),
                ],
                
              ),
            ],
      ),
        
      ),
    );
    
  }
}

class Kategori extends StatelessWidget {
  const Kategori({required this.ad,required this.resim,required this.renk,}) ;
  final String ad;
  final String resim;
  final Color renk;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                boxShadow: [
                    BoxShadow(
                        color: renk,
                        offset: Offset(8.0, 8.0),
                    ),
                ],
            ),
            child: Image.asset('lib/image/$resim', width: 100,height: 100,),
          ),
          Text(
            '$ad',
            style: TextStyle( color: Colors.black, fontSize: 25, ),
          ),
              
        ],
      ),
    );
  }
}