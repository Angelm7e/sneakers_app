import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   Shoetile({required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  15, bottom: 10,),
      child: Container(
       height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
        margin: EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset(shoe.imagePath,
                fit: BoxFit.cover,)),
            ),
            // Descripcion
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(shoe.description,
              style:TextStyle(
                color: Colors.grey
              ) ,),
            ),  

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name, 
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text(shoe.price)
                  ],
                ),
                SizedBox(width: 35,),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(Icons.add,
                    color: Colors.white,),
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}