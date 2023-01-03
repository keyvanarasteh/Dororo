// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, depend_on_referenced_packages, unnecessary_string_interpolations, use_key_in_widget_constructors, non_constant_identifier_names, camel_case_types, unused_import, file_names
import 'package:dororo/Urun.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class anasayfa extends StatefulWidget {
  
 
  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
   final List<String> items = ["anahtar.png","cekic.png","tornavida.png","matkap.png","civi.png","pense.png"];
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
                      Kategori(ad: "Anahtar", renk: Colors.cyan, resim: items[0]),
                      Kategori(ad: "Çekiç", renk: Colors.teal, resim: items[1]),
                    ],
                    ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kategori(ad: "Tornavida", renk: Colors.black54 , resim:items[2]),
                      Kategori(ad: "Matkap", renk: Colors.white60, resim: items[3]),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kategori(ad: "Çivi,Vida", renk: Colors.orangeAccent, resim: items[4]),
                      Kategori(ad: "Pense", renk: Colors.brown, resim: items[5]),
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
  const Kategori({required this.ad,required this.resim,required this.renk}) ;
  final String ad;
  final String resim;
  final Color renk;
 

  @override
  Widget build(BuildContext context) {
      var screenwidth = MediaQuery.of(context).size.width ;
    var screenheight = MediaQuery.of(context).size.height ;
    return InkWell(
      onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Urun(ad: "$ad", r: ad=='Anahtar' ? 0 : ad=='Çekiç'? 2 : ad=='Tornavida'? 5 :ad=='Matkap'? 3 :ad=='Çivi,Vida'? 1 : 4 , renkkk: renk, )),),
      child: Column(
        children: [
          Container(
            height: screenheight/5,
            width: screenwidth/4,
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
            child: Image.asset('lib/image/tools/$resim', width: 100,height: 100,),
          ),
          Text(
            '$ad',
            style: TextStyle( color: Colors.black, fontSize: screenwidth/20, ),
          ),
              
        ],
      ),
    );
  }
}