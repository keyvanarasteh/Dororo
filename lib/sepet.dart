// ignore_for_file: unused_import, camel_case_types, use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors_in_immutables, unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations

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
    double toplam = 0;

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
      body: _selectedIndex == 0
          ? anasayfa()
          : count == 0
              ? Container(
                  child: Center(
                      child: Text(
                  "Sepet Boş..",
                  style: TextStyle(fontSize: 25, color: Colors.blueGrey),
                )))
              : Container(
                  child: ListView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var item in sepett)
                            sepettt(sepett.toList().indexOf('$item'), item),
                        ],
                      ),
                      Container(color: Colors.black, height: 1),
                      for (var item in sepett)
                        Text(
                            (toplam += Anahtar2[Anahtar1.indexOf(item)] *
                                    adet[sepett.toList().indexOf(item)])
                                .toString(),
                            style: TextStyle(
                                color: Colors.blueGrey[400], fontSize: 1)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(toplam.toString(),
                                        style: TextStyle(fontSize: 30)),
                                    Text("TL", style: TextStyle(fontSize: 25))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2, color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Sepeti Onayla",
                                          style: TextStyle(fontSize: 20)),
                                      Icon(Icons.shopping_bag_outlined),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }

  Widget sepettt(int i, String item) {
    double f =
        (Anahtar2[Anahtar1.toList().indexOf('$item')] * adet[i]).toDouble();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "lib/image/tools/$item",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  Anahtar3[Anahtar1.toList().indexOf('$item')],
                  style: TextStyle(fontSize: 17),
                  maxLines: 4,
                ),
                Text(f.toString(), style: TextStyle(fontSize: 15)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    child: Icon(Icons.add_circle_outline),
                    onTap: () {
                      setState(() {
                        adet[i]++;
                      });
                    }),
                Text("Adet : ${adet.isEmpty ? '0' : adet[i]}"),
                InkWell(
                  child: Icon(Icons.remove_circle_outline),
                  onTap: () {
                    setState(() {
                      adet[i]--;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
