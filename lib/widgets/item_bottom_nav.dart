import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNav extends StatelessWidget{
  const ItemBottomNav({super.key});

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3)
            )
          ]
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$115",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(CupertinoIcons.cart_badge_plus), label: Text("Add to cart"),

            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF4C53A5)),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 8,horizontal: 14)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ))
            ),
            )
          ],
        ),
      ),

    );
  }
}