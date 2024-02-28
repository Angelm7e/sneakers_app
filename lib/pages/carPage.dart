import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';
import 'package:sneakers_app/widgets/cart.Iten.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Text('My cart'),

        Expanded(child: 
        ListView.builder(
          itemCount: value.getUsercart().length,
          itemBuilder: (BuildContext context, int index) {
            Shoe individualShoe =value.getUsercart()[index];
            return CartItem(shoe: individualShoe,) ;
          },
        ),)
      ],
    ));  }
}

