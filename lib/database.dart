import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mstraders/constant.dart';
import 'package:mstraders/modules/grass.dart';
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