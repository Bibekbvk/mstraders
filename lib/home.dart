import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mstraders/modules/others.dart';
import 'package:mstraders/modules/wallfoam.dart';
import 'package:mstraders/pages/canvaspage.dart';
import 'package:mstraders/pages/grass.dart';
import 'package:mstraders/pages/mularpage.dart';
import 'package:mstraders/pages/otherspage.dart';
import 'package:mstraders/pages/wallfoampage.dart';
import 'package:mstraders/pages/wallpaperpage.dart';
import 'package:auto_size_text/auto_size_text.dart';


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
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 0.6,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                       padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        "Canvas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CanvasPage('Wallpaper')));
                  },
                ),

                  InkWell(
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 0.6,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                         padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        "Mural",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MularPage('Wallpaper')));
                  },
                ),

              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                        padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                         height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        "Wall Foam",
                        
                        textAlign: TextAlign.center,
                        style: TextStyle(
                           color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoamPage('Wallpaper')));
                  },
                ),

                  InkWell(
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 0.6,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                         padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        "Wallpaper",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                           color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wallpaperPage('Wallpaper')));
                  },
                ),
              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                           padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                           height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        "Artificial Grass",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
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
                    // height: MediaQuery.of(context).size.height / 03,
                    // width: MediaQuery.of(context).size.width / 05,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.white, width: 4)),
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                           
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                            'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ))),
                      AutoSizeText(
                        
                        "Others...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22, fontWeight: FontWeight.w900),
                            maxLines: 1,
                            minFontSize: 12,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => otherPage('Wallpaper')));
                  },
                ),
              ],
            ),

            
           
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                // height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(44),
                      border: Border.all(color: Colors.black, width: 4)),
                  child: Column(children: [
                    AutoSizeText(
                      "3D MS traders Pvt.Ltd",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                          maxLines: 2,
                          minFontSize: 12,
                    ),
                    AutoSizeText(
                      "Gausala(Battisputali), Ktm",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                          maxLines: 3,
                          minFontSize: 12,
                    ),
                    AutoSizeText(
                      "Opposite to Krishi Bikash Bank (Near Dwarika Hote)",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                          maxLines: 3,
                          minFontSize: 12,
                    ),
                    AutoSizeText(
                      "Production/Factory: Gausala (Rameshwor Mandir)",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                          maxLines: 3,
                          minFontSize: 12,
                    ),
                    AutoSizeText(
                      "01-5555555(Landline), 98423232323(NTC), 978237478(NCELL) ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                          maxLines: 3,
                          minFontSize: 12,
                    ),
                  ]))
            ]),
            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //   Container(
            //       decoration: BoxDecoration(
            //           color: Colors.white38,
            //           borderRadius: BorderRadius.circular(44),
            //           border: Border.all(color: Colors.black, width: 4)),
            //       child: Row(children: [
            //         Container(
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(22),
            //                 border: Border.all(
            //                     color: Colors.white, width: 4)),
            //             padding: EdgeInsets.all(5),
            //             margin: EdgeInsets.all(5),
            //             child: Image.network(
            //               'https://www.vladana-kristena.cz/wp-upload/41879_1-5-panel-ks-hd-vytisknout-jeden-kus-karikatura-zdi-plak%C3%A1ty/pic.jpeg',
            //               height: MediaQuery.of(context).size.height / 4.5,
            //               width: MediaQuery.of(context).size.width / 6.5,
            //               fit: BoxFit.cover,
            //             )),
            //         Container(
            //           height: MediaQuery.of(context).size.height / 4,
            //           width: MediaQuery.of(context).size.width / 1.3,
            //             child: 
            //             Container(
            //                     child: AutoSizeText(
            //                   "sadhfsdhfjsdhfjshfsjhfksjhfsjkhfaskjdhfsjkadfhsdjks",
            //                   maxLines: 7,
            //                   minFontSize: 10,),
            //             )
            //                 )
            //       ]))
            // ]),
            //    Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     InkWell(
            //       hoverColor: Colors.deepPurple.shade800,
            //       child: Container(
            //           padding: EdgeInsets.all(5),
            //           margin: EdgeInsets.all(5),
            //           height: MediaQuery.of(context).size.height / 7,
            //           width: MediaQuery.of(context).size.width / 5,
            //           decoration: BoxDecoration(
            //               color: Colors.blueAccent,
            //               border: Border.all(color: Colors.redAccent, width: 3),
            //               borderRadius: BorderRadius.circular(22)),
            //           child: Column(
            //             children: [
            //               AutoSizeText(
            //                 "Apply For Delear",
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(
            //                     fontSize: 14, fontWeight: FontWeight.w900),
            //                     maxLines: 2,
            //                     minFontSize: 12,
            //               ),
            //               AutoSizeText(
            //                 "We Have more than 100 dealers and sellers all over the world",
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(fontSize: 12),
            //                 maxLines: 2,
            //                 minFontSize: 10,
            //               ),
            //             ],
            //           )),
            //     ),
            //     InkWell(
            //       hoverColor: Colors.deepPurple.shade800,
            //       child: Container(
            //           padding: EdgeInsets.all(5),
            //           margin: EdgeInsets.all(5),
            //           height: MediaQuery.of(context).size.height / 7,
            //           width: MediaQuery.of(context).size.width / 5,
            //           decoration: BoxDecoration(
            //               color: Colors.blueAccent,
            //               border: Border.all(color: Colors.redAccent, width: 3),
            //               borderRadius: BorderRadius.circular(22)),
            //           child: Column(
            //             children: [
            //               AutoSizeText(
            //                 "Success Story",
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(
            //                     fontSize: 14, fontWeight: FontWeight.w900),
            //                     maxLines: 1,
            //                     minFontSize: 8,
            //               ),
            //               AutoSizeText(
            //                 "View Our Success Story From Dealers and sellers",
            //                 textAlign: TextAlign.center,
            //                 maxLines: 2,
            //                 minFontSize: 8,
            //               )
            //             ],
            //           )),
            //     ),
            //     InkWell(
            //       hoverColor: Colors.deepPurple.shade800,
            //       child: Container(
            //           padding: EdgeInsets.all(5),
            //           margin: EdgeInsets.all(5),
            //           height: MediaQuery.of(context).size.height / 7,
            //           width: MediaQuery.of(context).size.width / 5,
            //           decoration: BoxDecoration(
            //               color: Colors.blueAccent,
            //               border: Border.all(color: Colors.redAccent, width: 3),
            //               borderRadius: BorderRadius.circular(22)),
            //           child: Column(
            //             children: [
            //               AutoSizeText(
            //                 "Feedback",
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(
            //                     fontSize: 14, fontWeight: FontWeight.w900),
            //                     maxLines: 1,
            //                     minFontSize: 8,
            //               ),
            //               AutoSizeText(
            //                 "Feedback From the people who have used our products",
            //                 textAlign: TextAlign.center,
            //                 maxLines: 2,
            //                 minFontSize: 10,
            //               )
            //             ],
            //           )),
            //     ),
            //   ],
            // ),


          ],
        ),
      ),
    );
  }
}
