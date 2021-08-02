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
      backgroundColor: Colors.brown.shade200,
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
                            'https://cdn.shopify.com/s/files/1/1568/8443/products/mb_living_room_43_1200x1200.jpg?v=1571610500',
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
                            'https://th.bing.com/th/id/R.716c0b29627aed9a5f0bfa514133f2eb?rik=n1qMK1ofLzV%2bfg&pid=ImgRaw',
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
                            'https://mcdn.wallpapersafari.com/medium/85/92/pV2tSK.jpg',
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
                            'https://printmyspace.b-cdn.net/wp-content/uploads/2020/11/PMS2800138378587WP-Buy-Birch-Tree-Pattern-Wallpaper-1.jpg',
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
                            'https://boraturf.com/wp-content/uploads/2020/06/home-bahce-peyzaj-banner-2.jpg',
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
                            'data:image/jpeg;base64,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',
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
