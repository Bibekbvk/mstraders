import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mstraders/pages/grass.dart';
import 'package:mstraders/pages/wallpaperpage.dart';

class Myhomepage extends StatefulWidget {
  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent.shade400,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  hoverColor: Colors.deepPurple.shade800,
                  child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.redAccent, width: 3),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        children: [
                          Text(
                            "Apply For Delear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "We Have more than 100 dealers and sellers all over the world",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  hoverColor: Colors.deepPurple.shade800,
                  child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.redAccent, width: 3),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        children: [
                          Text(
                            "Success Story",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "View Our Success Story From Dealers and sellers",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ),
                InkWell(
                  hoverColor: Colors.deepPurple.shade800,
                  child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(color: Colors.redAccent, width: 3),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        children: [
                          Text(
                            "Feedback",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Feedback From the people who have used our products",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  " Click to view and order our Products...........",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          ))),
                      Text(
                        "Canvas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wallpaper('Wallpaper')));
                  },
                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "Murals",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "Wall Forms",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "Artificial Grass",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      )
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => grasspage('Wallpaper')));
                  },
                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "Wall Papers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      )
                    ]),
                  ),
                     onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wallpaper('Wallpaper')));
                  },

                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 03,
                    width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 4)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 6.5,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "And many more....",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(44),
                      border: Border.all(color: Colors.black, width: 4)),
                  child: Column(children: [
                    Text(
                      "3D MS traders Pvt.Ltd",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Gausala(Battisputali), Ktm",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Opposite to Krishi Bikash Bank (Near Dwarika Hote)",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Production/Factory: Gausala (Rameshwor Mandir)",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "01-5555555(Landline), 98423232323(NTC), 978237478(NCELL) ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                  ]))
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(44),
                      border: Border.all(color: Colors.black, width: 4)),
                  child: Row(children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                                color: Colors.orangeAccent, width: 4)),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        child: Image.network(
                          'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: MediaQuery.of(context).size.width / 6.5,
                          fit: BoxFit.cover,
                        )),
                    Container(
                        child: Text(
                            "sadhfsdhfjsdhfjshfsjhfksjhfsjkhfaskjdhfsjkadfhsdjks"))
                  ]))
            ])
          ],
        ),
      ),
    );
  }
}
