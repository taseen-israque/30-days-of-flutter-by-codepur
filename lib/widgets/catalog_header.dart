import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Catalog App",textScaleFactor: 3,style: TextStyle(color: Colors.deepPurple[900])),
          SizedBox(height: 5.00,),
          Text("Trending Products",)
        ],
      ),
    );
  }
}
