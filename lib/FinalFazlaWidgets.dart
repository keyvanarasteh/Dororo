// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, override_on_non_overriding_member, annotate_overrides, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class widgets extends StatefulWidget {

  @override
  State<widgets> createState() => _widgetsState();
}
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _widgetsState extends State<widgets> {
  @override
  bool i = false;
   double a = 20;
   String d = list.first;
   Color light = Colors.white;
   bool tik = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: light,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: 
            [Column(
              children: [
                SizedBox(height: 20,),
                Slider(
                            value: a,
                            max: 100,
                            divisions: 5,
                            label: a.round().toString(),
                            onChanged: (double value) {
                setState(() {
                  a = value;
                });}),

                 CupertinoButton(
              onPressed: () {},
              child: Text(a.toString()),
            ),

                DropdownButton<String>(
      value: d,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.red,
      ),
      onChanged: (String? value) {
        setState(() {
          d = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),

        Checkbox(
      checkColor: Colors.white,
      value: i,
      onChanged: (bool? value) {
        setState(() {
          i = value!;
        });
      },
    ),

  Switch(
      // This bool value toggles the switch.
      value: tik,
      activeColor: Colors.red,
      onChanged: (bool value) {
        setState(() {
          tik = value ;
          tik == true ? light = Colors.black : light = Colors.white  ;
        });
      },
    )

              ],
            ),
          ],
        ),
      ),
    );
  }
}