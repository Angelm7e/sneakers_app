import 'package:flutter/material.dart';
import 'package:sneakers_app/pages/HomePage.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        // Logo
        Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 90),
          child: Image.asset('assets/images/logo.png'),
        ),
        // Title
        Text('Just Do It',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
        SizedBox(height: 30,),
        //Sub title
        Text('Los mejores tenis con la mejore calidad y hechos con amor y a mano',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey
        ),
        textAlign: TextAlign.center,
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.1,),
        //button
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text("Comenzar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}