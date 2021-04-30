import 'package:beka_darjania_shualeduri_1/models/Clothes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {

  final Function refresh;
  final Clothes product;

  EditScreen({this.refresh, this.product});

  @override
  _EditScreenState createState() => _EditScreenState(refresh: refresh, product: product);
}

class _EditScreenState extends State<EditScreen> {

  Clothes product;
  final Function refresh;

  int id = 0;
  String name = '';
  String imageUrl = '';
  String size = '';
  double price = 0;
  String description = '';


  _EditScreenState({this.refresh, this.product}){
    id = product.id;
    name = product.name;
    imageUrl = product.imageUrl;
    size = product.size;
    price = product.price;
    description = product.description;
  }


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
          title: Text('Edit'),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  //
                  //
                  //
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(
                      initialValue: name.toString(),
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
                      initialValue: imageUrl.toString(),
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
                      initialValue: size.toString(),
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
                      initialValue: price.toString(),
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
                      initialValue: description.toString(),
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
                          TextButton(child: Text('Edit'), onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // success
                              setState(() {
                                Navigator.pop(context);

                                this.product.name = name;
                                this.product.imageUrl = imageUrl;
                                this.product.size = size;
                                this.product.price = price;
                                this.product.description = description;

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
