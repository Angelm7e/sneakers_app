
import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  List <Shoe> shoeShop = [
    Shoe(
      
      name: 'Jordan', 
      price: '150', 
      imagePath: 'assets/images/sneakers1.png', 
      description: 'Esta sera la descripcion', 
      productCode: '1'
      ),
      Shoe(
      name: 'Jordan',  
      price: '175', 
      imagePath: 'assets/images/sneakers2.png', 
      description: 'Esta sera la descripcion',
      productCode: '2'
      ),
      Shoe(
      name: 'Jordan', 
      price: '250', 
      imagePath: 'assets/images/sneakers3.png', 
      description: 'Esta sera la descripcion',
      productCode: '3'
      ),
      Shoe(
      name: 'Jordan', 
      price: '300', 
      imagePath: 'assets/images/sneakers4.png', 
      description: 'Esta sera la descripcion',
      productCode: '4'
      ),
      Shoe(
      name: 'Jordan', 
      price: '200', 
      imagePath: 'assets/images/sneakers1.png', 
      description: 'Esta sera la descripcion',
      productCode: '5'
      ),
  ];

  //List of Itens im user cart
  List<Shoe> userCart= [];

  // list of shoes for most wanted
  List<Shoe> getShoeList(){
    return shoeShop;

  }

  // get cart
  List<Shoe> getUsercart (){
    return userCart;
  }

  // add iten to cart

  void addItentoCart (Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove iten from cart
  void removeItenFromCart (Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}