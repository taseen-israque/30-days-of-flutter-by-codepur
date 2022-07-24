
import 'package:flutter/material.dart';
import 'package:practice_app/catalog.dart';
import 'package:practice_app/widgets/Add%20to%20cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatefulWidget {

  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$${widget.catalog.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),
            ),
            AddToCart(catalog: widget.catalog),
          ],
        ).p24(),
        appBar: AppBar(backgroundColor: Colors.transparent,),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
              children: [
                Hero(
                  tag: Key(widget.catalog.id.toString()),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.network(widget.catalog.image.toString()),
                  ),
                ),
                Expanded(
                    child: VxArc(
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      height: 10.0,
                      child: Container(
                        color: Colors.white,
                        width: context.screenWidth,
                        child: Column(

                          children: [
                            Text(widget.catalog.name.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple[900],),textScaleFactor: 2.00,),
                            Text(widget.catalog.desc.toString(),style: TextStyle(),),
                          ],
                        ).py32()

                      ),
                    )
                )
              ]
          ),
        )
    );
  }
}


