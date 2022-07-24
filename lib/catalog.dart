import 'package:flutter/material.dart';
class Item {
  int id=10;
  String? name;
  String? desc;
  num price=10;
  String? image;
  String? color;

  Item({this.color, required this.id, this.name, this.desc,required this.price, this.image});

  Item.fromMap(Map<String,dynamic> map){
    id=map['id'];
    name = map['name'];
    desc=map['desc'];
    price=map['price'];
    image=map['image'];
    color=map['color'];
  }


}

class CatalogModel{

  static final catModel = CatalogModel._internal();
  CatalogModel._internal();

  factory CatalogModel() => catModel;

  static List<Item> items = [


  ];

  // Get Item by id
  Item getById(int id) => items.firstWhere((element) => element.id == id,orElse:  null);

  // get Item By Position
  Item getByPosition(int pos) => items[pos];
}

