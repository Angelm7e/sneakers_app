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
        value.getUsercart().isEmpty ? _emptyCart(context):
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



_emptyCart(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 80),
    child: Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.6,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Image.asset('assets/images/empty.png', color: Colors.grey,)),
            Text('No tienes articulos agregados', 
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey
            ),),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: (){
                  
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  color: Colors.grey),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Center(child: Text('Ir de compras', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),)
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    ),
  );
}