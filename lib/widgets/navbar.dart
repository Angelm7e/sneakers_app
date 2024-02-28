import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {
  void Function(int)? onTapChanged;
   MyBottonNavBar({super.key, required this.onTapChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        backgroundColor: Colors.grey.shade300,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        activeColor: Colors.black ,
        color: Colors.grey[400],
        tabActiveBorder:Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange: (value)=> onTapChanged!(value),
        tabs: 
      [
        GButton(icon: Icons.home, 
        text: "Inicio",),
        GButton(icon: Icons.shopping_bag_rounded,
        text: "Carro",),  
        GButton(icon: Icons.person_2_rounded,
        text: "Perfil",)
      ]),
    );
  }
}