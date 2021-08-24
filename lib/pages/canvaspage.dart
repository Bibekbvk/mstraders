import 'package:flutter/material.dart';
import 'package:mstraders/database.dart';
import 'package:mstraders/modules/canvas.dart';
import 'package:mstraders/modules/grass.dart';
import 'package:mstraders/modules/wallpaper.dart';

import '../constant.dart';
import '../home.dart';


//trhis is canvas page

class CanvasPage extends StatefulWidget {
  @override
  final String category;

  CanvasPage(this.category);

  _CanvasPageState createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  DatabaseService db = DatabaseService();
  List<Canvass> canvasList = new List();
  ScrollController _scrollController = new ScrollController();

  TextEditingController search = new TextEditingController();
  TextEditingController contact = new TextEditingController();

  int offset = 0;

  int currentDataLength = 0;

  @override
  void initState() {
    super.initState();
    fetch(offset);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentDataLength >= 10) {
          print("List bigger than 10");

          offset = canvasList.length;
          fetch(offset);
        }

        print("called again");
        print(" OFFSET $offset  CURRENT VALUE $currentDataLength");
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    child: ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text(
                        "Canvas",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: canvasList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.orange, width: 1)),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 2)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                '${canvasList[index].images}',
                                height: MediaQuery.of(context).size.height / 2,
                                width: MediaQuery.of(context).size.width / 1.3,
                                fit: BoxFit.cover,
                              ))),
                      Text("Category:${canvasList[index].type}"),
                      Text("Product Code:${canvasList[index].P_id}"),
                      Text("Name:${canvasList[index].name}"),
                      Text("In Stock:${canvasList[index].items}"),
                      Text("Price:${canvasList[index].price}"),
                      Text("Quantity:${canvasList[index].others}"),
                      Text("Made in:${canvasList[index].made}"),
                      Text("${canvasList[index].descr}"),
                      Container(
                        child: ElevatedButton(
                            //hoverColor: Colors.blueAccent,

                            child: Text("Order this item"),
                            onPressed: () {
                              print("hello");

                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(
                                      "Please enter you active number, technician will call you for more details"),
                                  content: TextField(
                                    controller: contact,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.contact_phone),
                                        labelText: "Enter your active number"),
                                  ),
                                  actions: [
                                    RaisedButton(
                                      child: Text("Submit"),
                                      color: Colors.cyanAccent,
                                      onPressed: () async {
                                        if (contact.text == '') {
                                          showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              title: Text(
                                                  "Please enter your contact number"),
                                              actions: [
                                                RaisedButton(
                                                    child: Text("OK"),
                                                    onPressed: () {
                                                      Navigator.of(context,
                                                              rootNavigator:
                                                                  true)
                                                          .pop();
                                                    })
                                              ],
                                            ),
                                          );
                                        } else {
                                          var res = await db.insertOrder(
                                              canvasList[index].P_id,
                                              canvasList[index].type,
                                              canvasList[index].name,
                                              contact.text,
                                              DateTime.now());

                                          if (res == 200) {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                title: Text(
                                                    "Successfully purchased, we will call you for more details"),
                                                actions: [
                                                  RaisedButton(
                                                      child: Text("OK"),
                                                      onPressed: () {
                                                        Navigator.of(context,
                                                                rootNavigator:
                                                                    true)
                                                            .pop();
                                                      })
                                                ],
                                              ),
                                            );
                                          } else {
                                            print("failure");
                                          }
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              );
                            }),
                      )
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CanvasPage('Wallpaper')));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  fetch(int offset) async {
    print("in fetch");

    var data = await db.allCanvas();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Canvass p in data) {
        canvasList.add(p);
      }
    });
  }
}
