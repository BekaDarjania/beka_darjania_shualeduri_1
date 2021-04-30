import 'package:beka_darjania_shualeduri_1/api.dart';
import 'package:beka_darjania_shualeduri_1/models/Clothes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {

  final Function refresh;

  AddScreen({this.refresh});

  @override
  _AddScreenState createState() => _AddScreenState(refresh: refresh);
}

class _AddScreenState extends State<AddScreen> {

  final Function refresh;
  _AddScreenState({this.refresh});

  int id = 0;
  String name = '';
  String imageUrl = '';
  String size = '';
  double price = 0;String description = '';

  final _formKey = GlobalKey<FormState>();

  InputDecoration styleWithAHint(String hint) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.redAccent,
          style: BorderStyle.solid,
          width: 2,
        )),
        hintText: hint);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Add'),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        id = int.parse(v);
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: styleWithAHint("ID"),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        name = v;
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: styleWithAHint("Name"),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        imageUrl = v;
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: styleWithAHint("Image Url"),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        size = v;
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: styleWithAHint("Size"),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        price = double.parse(v);
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: styleWithAHint("Price"),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (v) {
                        description = v;
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: styleWithAHint("Description"),
                    ),
                  ),
                  //
                  //
                  //
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child:
                          TextButton(child: Text('Back'), onPressed: () {
                            Navigator.pop(context);
                          }),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child:
                          TextButton(child: Text('add'), onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // success
                              setState(() {
                                Navigator.pop(context);
                                DUMMY_DATA.add(Clothes(
                                    // id: this.id,
                                    // name: this.name,
                                    // imageUrl: this.imageUrl,
                                    // size: this.size,
                                    // price: this.price,
                                    // description: this.description),
                                    id: this.id,
                                    name: 'yoda',
                                    imageUrl: 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
                                    size: 'baby',
                                    price: 100000,
                                    description: 'wdym?! this is baby yoda'),
                                );
                                refresh();
                              });
                            }
                          }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
