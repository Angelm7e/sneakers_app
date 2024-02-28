import 'package:flutter/material.dart';
import 'package:sneakers_app/pages/carPage.dart';
import 'package:sneakers_app/pages/profilePage.dart';
import 'package:sneakers_app/pages/shoppingPage.dart';
import 'package:sneakers_app/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _slecttedIndex = 0;

  void NavigatorBottomBar(int index){
    setState(() {
      _slecttedIndex = index;
    });
  }

  final List<Widget> _pages =[
    ShopPage(),
    CartPage(),
    ProfilePage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Text('Hola, Angel',
          style: TextStyle(
            fontSize: 20
          ),),
        ),
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            }, 
            icon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.menu),
            ))),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Logo
              DrawerHeader(child: Image.asset('assets/images/logo.png',
              color: Colors.white,)),
            //other Pages
            Column(
              children: [
                Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home,
                color: Colors.white,),
                title: Text('Home',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.info,
                color: Colors.white,),
                title: Text('Acerca de',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.settings,
                color: Colors.white,),
                title: Text('Configuracion',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom:15, top: 150),
              child: ListTile(
                leading: Icon(Icons.logout,
                color: Colors.white,),
                title: Text('Salir',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_slecttedIndex],
      bottomNavigationBar: MyBottonNavBar(onTapChanged: (index) => NavigatorBottomBar(index),),
    );
  }
}