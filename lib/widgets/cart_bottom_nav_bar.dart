import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget{
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                Text('\$250',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF4C53A5),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center(child: Text('Checkout',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}