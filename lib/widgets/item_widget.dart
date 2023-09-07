import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.68,
        //it disable the own scrolling function of the GridView and make the list scrolling of the homePage
        physics: NeverScrollableScrollPhysics(),
    children: [
      for(int i = 1; i<8; i++)
      Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 10),
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("-50%",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Icon(Icons.favorite_border,color: Colors.red,)
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "itemPage");
              },
              child: Container(
                  margin: EdgeInsets.all(5),
                  child: Image.asset("assets/images/$i.png",height: 100,width: 100,)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 8),
              child: Text('Product Title',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5)
              ),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Write your product description here',style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5)
              ),),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$55',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                  Icon(Icons.shopping_cart_checkout,color: Color(0xFF4C53A5),)
                ],
              ),
            ),
          ],
        ),
      )
    ],);
  }
}


