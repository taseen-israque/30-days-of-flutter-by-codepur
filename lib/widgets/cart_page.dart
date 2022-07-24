
import 'package:flutter/material.dart';
import 'package:practice_app/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [CartList().p32().expand(), Divider(), CartTotal()],
      ),
    );
  }
}

class CartTotal extends StatefulWidget {

  @override
  State<CartTotal> createState() => _CartTotalState();
}

class _CartTotalState extends State<CartTotal> {
  final cartModel=CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cartModel.totalPrice}".text.xl6.make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported".text.make()));
            },
            child: "Buy".text.white.make(),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.blueAccent[800])),
          ).w32(context)
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final cartModel=CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartModel.items?.length,
        itemBuilder: (context,index) =>ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(onPressed: () {
            cartModel.remove(cartModel.items[index]);setState(() {});
          }, icon: Icon(Icons.remove_circle_outline)),
          title:"${cartModel.items[index].name}".text.make()
        )

    );
  }
}
