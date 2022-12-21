// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last, non_constant_identifier_names, no_logic_in_create_state, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, file_names

import 'package:dororo/UrunDetay.dart';
import 'package:dororo/list.dart';
import 'package:flutter/material.dart';

class Urun extends StatefulWidget {
  Urun({required this.ad,required this.r,required this.renkkk,});
  final String ad;
  final int r;
  final Color renkkk;
  @override
  State<Urun> createState() => _UrunState(add: ad, s:r , renk: renkkk);
}

class _UrunState extends State<Urun> {
  _UrunState({required this.add,required this.s,required this.renk});
  final String add;
  final int s;
  final Color renk;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children:  
            [Column(
            children: [
              Urunn(fiyat: s==0?Anahtar2[0] : s==1 ? Anahtar2[3] : s==2 ? Anahtar2[6]: s==3 ? Anahtar2[9]: s==4 ? Anahtar2[12]: Anahtar2[15], image: s==0?Anahtar1[0] : s==1 ? Anahtar1[3] : s==2 ? Anahtar1[6]: s==3 ? Anahtar1[9]: s==4 ? Anahtar1[12]: Anahtar1[15], miniaciklama: s==0?Anahtar3[0] : s==1 ? Anahtar3[3] : s==2 ? Anahtar3[6]: s==3 ? Anahtar3[9]: s==4 ? Anahtar3[12]: Anahtar3[15],rennk: renk,),
              Urunn(fiyat: s==0?Anahtar2[1] : s==1 ? Anahtar2[4] : s==2 ? Anahtar2[7]: s==3 ? Anahtar2[10]: s==4 ? Anahtar2[13]: Anahtar2[16], image: s==0?Anahtar1[1] : s==1 ? Anahtar1[4] : s==2 ? Anahtar1[7]: s==3 ? Anahtar1[10]: s==4 ? Anahtar1[13]: Anahtar1[16], miniaciklama: s==0?Anahtar3[1] : s==1 ? Anahtar3[4] : s==2 ? Anahtar3[7]: s==3 ? Anahtar3[10]: s==4 ? Anahtar3[13]: Anahtar3[16], rennk: renk,),
              Urunn(fiyat: s==0?Anahtar2[2] : s==1 ? Anahtar2[5] : s==2 ? Anahtar2[8]: s==3 ? Anahtar2[11]: s==4 ? Anahtar2[14]: Anahtar2[17], image: s==0?Anahtar1[2] : s==1 ? Anahtar1[5] : s==2 ? Anahtar1[8]: s==3 ? Anahtar1[11]: s==4 ? Anahtar1[14]: Anahtar1[17], miniaciklama: s==0?Anahtar3[2] : s==1 ? Anahtar3[5] : s==2 ? Anahtar3[8]: s==3 ? Anahtar3[11]: s==4 ? Anahtar3[14]: Anahtar3[17], rennk: renk,),
            ]
            ),
          ],
      ),
    );
  }
}

 class Urunn extends StatelessWidget{
   Urunn({required this.fiyat,required this.image, required this.miniaciklama, required this.rennk,}) ;
    final String miniaciklama;
    final String image;
    final double fiyat;
    final Color rennk ;
    
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width ;
    var screenheight = MediaQuery.of(context).size.height ;
  
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
            width: 300,
            height: 500,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white),
            child: InkWell(
              onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Detay(add: miniaciklama , fiyatt: fiyat, renkk: rennk , resimm: image,)),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("lib/image/tools/$image",alignment: Alignment.topCenter, ),
                  Text("$miniaciklama", maxLines: 4 ,  ),
                  Wrap(crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(height: 30,width: 70,alignment: Alignment.center, child: Text("$fiyat \$"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white),),
                      SizedBox(width: screenwidth/10,),
                      InkWell(onTap: () {sepett.add(image);adet.add(1); },
                      child: Container(width: 40,height: 40, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.black), color: Colors.white),child: Icon(Icons.shopping_basket_rounded))),
                    ],
                  ),
                ],
              ),
            ),
        ),
    );
  }
  

  

}
