import 'package:flutter/cupertino.dart';

class Clothes {
  int id;
  String name;
  String imageUrl;
  String size;
  double price;
  String description;

  Clothes({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.size,
    @required this.price,
    @required this.description,
  });
}
