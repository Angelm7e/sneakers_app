import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';
import 'package:sneakers_app/widgets/shoeTile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage ({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add iten to cart
  void addItenToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItentoCart(shoe);

    // addess sucessfully 
    showDialog(context: context,
    builder: (context)=>AlertDialog(
      title: Text('Articulo añadido con exito'),
      content: Text('Mira el Carrito'),
      backgroundColor: Colors.grey[200],
    ));

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>  Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Buscar",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),),
            Icon(Icons.search,
            color: Colors.grey,)
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text('Todos volamos... Solo que algunos vuelan por mas tiempo que otros'),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text('Lo mas buscado',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            Text("Ver Todos", 
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),)
          ],),
        ),
        
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                // color: Colors.red,
                 height: MediaQuery.of(context).size.height * 0.4,
                 width: MediaQuery.of(context).size.width * 1,
                  child: 
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.shoeShop.length,
                  itemBuilder: (BuildContext context, int index) {
                    Shoe shoe = value.getShoeList()[index];
                    return Shoetile(shoe:shoe,
                     onTap: () { addItenToCart(shoe); } ,);
                  },
                ),),
              ],
              
            ),
          ),
        ),  
      ],
    ));
  }
}