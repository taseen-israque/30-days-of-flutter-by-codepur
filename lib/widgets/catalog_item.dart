
import 'package:flutter/material.dart';
import 'package:practice_app/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

import 'Add to cart.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog}):assert(catalog!=null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(

        children: [
          Hero(
      tag: Key(catalog.id.toString()),
      child: CatalogImage(image:catalog.image.toString())),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(catalog.name.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple[900])),
                  Text(catalog.desc.toString(),style: TextStyle(),),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${catalog.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      AddToCart(catalog:catalog)
                    ],
                  ),


                ],))
        ],
      ),

    ).white.square(130).make().py16();
  }
}

