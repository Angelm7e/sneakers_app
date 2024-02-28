import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe.dart';


class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
          
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(widget.shoe.imagePath, fit: BoxFit.cover,)),
            )
          ],
        ),
      ),
    );
  }
}