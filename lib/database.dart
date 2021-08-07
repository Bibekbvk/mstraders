import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mstraders/constant.dart';
import 'package:mstraders/modules/canvas.dart';
import 'package:mstraders/modules/grass.dart';
import 'package:mstraders/modules/helpinfo.dart';
import 'package:mstraders/modules/mulars.dart';
import 'package:mstraders/modules/others.dart';
import 'package:mstraders/modules/wallfoam.dart';
import 'package:mstraders/modules/wallpaper.dart';
import 'package:http/http.dart' as http;

class DatabaseService{

Future<List<Wallpaper>> allitem() async {
    var data = await http.get(
      "$BASE_URL/api/getwallpaper",
      
    );

    var jsonData = json.decode((data.body));

    List<Wallpaper> allitems = [];
    for (var each in jsonData) {
      Wallpaper wallpaperList = Wallpaper(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      allitems.add(wallpaperList);
    }
    return allitems;
  }



Future<List<Canvass>> allCanvas() async {
    var data = await http.get(
      "$BASE_URL/api/getcanvas",
      
    );

    var jsonData = json.decode((data.body));

    List<Canvass> canvas = [];
    for (var each in jsonData) {
      Canvass canvasList = Canvass(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      canvas.add(canvasList);
    }
    return canvas;
  }





Future<List<WallFoam>> allFoam() async {
    var data = await http.get(
      "$BASE_URL/api/wallfoam",
      
    );

    var jsonData = json.decode((data.body));

    List<WallFoam> foam = [];
    for (var each in jsonData) {
      WallFoam foamList = WallFoam(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      foam.add(foamList);
    }
    return foam;
  }




Future<List<Others>> allother() async {
    var data = await http.get(
      "$BASE_URL/api/getother",
      
    );

    var jsonData = json.decode((data.body));

    List<Others> others = [];
    for (var each in jsonData) {
      Others otherList = Others(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      others.add(otherList);
    }
    return others;
  }



Future<List<Dealer>> dealer() async {
    var data = await http.get(
      "$BASE_URL/api/getdealer",
      
    );

    var jsonData = json.decode((data.body));

    List<Dealer> dealer = [];
    for (var each in jsonData) {
      Dealer dealerList = Dealer(
          topic: each['topic'],
          image: each['image'],
          details: each['details'],
          
          );
      dealer.add(dealerList);
    }
    return dealer;
  }



Future<List<Grass>> allgrass() async {
    var data = await http.get(
      "$BASE_URL/api/getgrass",
      
    );

    var jsonData = json.decode((data.body));

    List<Grass> grass = [];
    for (var each in jsonData) {
      Grass grassList = Grass(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      grass.add(grassList);
    }
    return grass;
  }
  
  
Future<List<Mulars>> allMulars() async {
    var data = await http.get(
      "$BASE_URL/api/getmural",
      
    );

    var jsonData = json.decode((data.body));

    List<Mulars> mulars = [];
    for (var each in jsonData) {
      Mulars mularsList = Mulars(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
          made: each['made'],
          images: each['images']
          );
      mulars.add(mularsList);
    }
    return mulars;
  }

 
  Future<int> insertOrder( int PId,
      String type, String name, String contact, DateTime time) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/insertOrder?P_id=$PId&type=$type&name=$name&contact=$contact&time=$time",
    );
    print("lamooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo");
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }




}