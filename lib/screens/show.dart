import 'package:beka_darjania_shualeduri_1/api.dart';
import 'package:beka_darjania_shualeduri_1/models/Clothes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  final Function refresh;
  final Clothes product;

  ShowScreen({this.product, this.refresh});

  @override
  _ShowScreenState createState() => _ShowScreenState(product: product, refresh: refresh);
}

class _ShowScreenState extends State<ShowScreen> {

  final Clothes product;
  final Function refresh;

  _ShowScreenState({this.product, this.refresh});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text("Are You Sure Want To Proceed ?"),
                    actions: [
                      TextButton(onPressed: () {
                        DUMMY_DATA.remove(product);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        refresh();
                      }, child: Text('Yes')),
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text('NO')),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/clothes_placeholder.png',
                    image: product.imageUrl,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        child: Text(
                          'Name: ' + this.product.name,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        child: Text(
                          'Price: ' + this.product.price.toString(),
                          style: TextStyle(fontSize: 24, color: Colors.green),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        child: Text(
                          'Size: ' + this.product.size,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          color: Colors.grey[100],
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Align(
                              child: Text(
                                this.product.description,
                                style:
                                    TextStyle(fontSize: 24, color: Colors.grey),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
