// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, unnecessary_null_comparison, prefer_if_null_operators

import 'package:dororo/anasayfa/Anasayfa.dart';
import 'package:dororo/list.dart';
import 'package:dororo/Urun.dart';
import 'package:flutter/material.dart';

class sepet extends StatefulWidget {
 

  @override
  State<sepet> createState() => _sepetState();
}

class _sepetState extends State<sepet> {
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
 
  @override
  Widget build(BuildContext context) {
    var count = sepett.toList().length;
    var count2 = adet.toList().length;
 
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[200],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Sepet',
          ),
      
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        
      ),
      body: _selectedIndex== 0 ? anasayfa() : Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(border: Border.all(width: 2),borderRadius: BorderRadius.circular(10), ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(""),
                Text(""),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(child: Icon(Icons.add_circle_outline), onTap: () {setState(() {adet[0]++;});}),
                    Text("Adet : ${adet.isEmpty ? '0' : adet[0]}"),
                    
                    InkWell(child: Icon(Icons.remove_circle_outline),onTap: () {setState(() {adet[0]--;});},), 
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ) ,
    );
      
      
      
  
  }
}
 
