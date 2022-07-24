import 'package:flutter/material.dart';
import 'package:practice_app/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;

  const AddToCart({super.key, required this.catalog});


  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {

    bool isinCart=_cart.items.contains( widget.catalog);
    return ElevatedButton(
      onPressed: () {


        if(!isinCart){
          isinCart=isinCart.toggle();
          final _catalog= CatalogModel();
          _cart.catalog=_catalog;
          _cart.add(widget.catalog);
          setState(() {

          });}
      }, child: isinCart? Icon(Icons.done):Text("Buy") ,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder())
      ),
    );
  }
}


