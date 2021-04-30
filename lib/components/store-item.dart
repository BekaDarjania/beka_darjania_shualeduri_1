import 'package:beka_darjania_shualeduri_1/models/Clothes.dart';
import 'package:beka_darjania_shualeduri_1/screens/edit.dart';
import 'package:beka_darjania_shualeduri_1/screens/show.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final Clothes product;
  final Function onDelete;
  final Function refresh;

  StoreItem({this.product, this.onDelete, this.refresh});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EditScreen(
                  refresh: refresh,
                  product: product,
                )));
      },
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ShowScreen(product: this.product, refresh: this.refresh)));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
        child: Column(
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/clothes_placeholder.png',
              image: product.imageUrl,
              fit: BoxFit.fitHeight,
              height: 180,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Name: ' + product.name),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Price: ' + product.price.toString()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
