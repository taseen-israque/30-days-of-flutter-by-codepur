import 'package:flutter/material.dart';
import 'package:practice_app/catalog.dart';
import 'package:practice_app/main.dart';
import 'package:practice_app/my%20routes.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}):assert(item!=null);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const BuyPage()));},
        leading : Image.network(item.image.toString()),
        title: Text(item.name.toString()),
        subtitle: Text(item.desc.toString()),
        trailing: Text(
            "\$${item.price}",
          style: TextStyle(color: Colors.deepPurple,fontWeight:FontWeight.bold,fontSize: 20.00),

        ),


      ),
    );
  }

  }

