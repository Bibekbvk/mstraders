import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mstraders/constant.dart';
import 'package:mstraders/modules/grass.dart';
import 'package:mstraders/modules/wallpaper.dart';
import 'package:http/http.dart' as http;

class DatabaseService{

Future<List<Items>> allitem() async {
    var data = await http.get(
      "$BASE_URL/api/getwallpaper",
      
    );

    var jsonData = json.decode((data.body));

    List<Items> allitems = [];
    for (var each in jsonData) {
      Items wallpaperList = Items(
          P_id: each['P_id'],
          type: each['type'],
          name: each['name'],
          descr: each['descr'],
          price: each['price'],
          items: each['items'],
          others: each['others'],
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






}