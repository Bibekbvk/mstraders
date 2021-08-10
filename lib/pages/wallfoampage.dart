import 'package:flutter/material.dart';
import 'package:mstraders/database.dart';
import 'package:mstraders/modules/grass.dart';
import 'package:mstraders/modules/wallfoam.dart';
import 'package:mstraders/modules/wallpaper.dart';

import '../constant.dart';
import '../home.dart';
class FoamPage extends StatefulWidget {
  @override
  final String category;

  FoamPage(this.category);

  _FoamPageState createState() => _FoamPageState();
}

class _FoamPageState extends State<FoamPage> {
  DatabaseService db = DatabaseService();
  List<WallFoam> foamList = new List();
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

          offset = foamList.length;
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
                  decoration: BoxDecoration(         
                      borderRadius: BorderRadius.circular(90)),
                      child:ListTile(
                        leading: Icon(Icons.photo_album),
                        title:Text("Wall Foam", style: TextStyle(fontSize: 22, color: Colors.white),),
                        

                      )
                  ),
                ),
              
          
            ],
          ),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: foamList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                      InkWell(
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 2,
                    // width: MediaQuery.of(context).size.width / 2,
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
                            '${foamList[index].images}',
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 1.3,
                            fit: BoxFit.cover,
                          ))),
                      // Text(
                      //   "Canvas",
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       fontSize: 22, fontWeight: FontWeight.w900),
                      // ),
                      Text("Category:${foamList[index].type}"),
                      Text("Name:${foamList[index].name}"),
                         Text("Stock:${foamList[index].items}"),
                            Text("Name:${foamList[index].price}"),
                               Text("Name:${foamList[index].others}"),
                                  Text("Made in:${foamList[index].made}"),
                    
                              Container(
                                child: ElevatedButton(
                                  //hoverColor: Colors.blueAccent,
                                  
                                  child: Text("Order this item"),
                                  onPressed:(){
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
                                          labelText: "Enter your active number"
                                        ),
                                      ),
                                      actions: [
                                        RaisedButton(
                                          child: Text("Submit"),
                                          color: Colors.cyanAccent,
                                          onPressed: () async {
                                        
                                       
                                            var res =
                                                await db.insertOrder(
                                                    foamList[index].P_id,
                                                    foamList[index].type,
                                                    foamList[index].name,
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
                                                            child:Text("OK"),
                                                            onPressed:(){
                                                             Navigator.of(context, rootNavigator: true).pop();

                                                            }
                                                          )
                                                        ],
                                                        ),
                                                        
                                              );

                                              print("success");
                                            
                                                //  Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //       builder: (context) =>
                                                //          Myhomepage()));
                                                
                                         
                                              // Navigator.pop(context);
                                              // Navigator.pop(context);
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             myMedicines()));
                                            } else {
                                              print("failure");
                                            }
                                          },
                                        ),
                                       // RaisedButton(child: Text("Cancel"))
                                      ],
                                    ),
                                  );


                                  }
                                    
                                ),

                              )
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoamPage('Wallpaper')));
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

    var data = await db.allFoam();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (WallFoam p in data) {
        foamList.add(p);
      }
    });
  }
}
