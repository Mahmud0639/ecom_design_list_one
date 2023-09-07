import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,size: 30,color: Color(0xFF4C53A5),),
          Padding(padding: EdgeInsets.only(left: 20),child: Text("DP Shop",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),),
          Spacer(),

          badge.Badge(
            badgeContent: Text("3",style: TextStyle(color: Colors.white),),
            badgeStyle: badge.BadgeStyle(padding: EdgeInsets.all(7),badgeColor: Colors.red),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'cartPage');
              },
              child: Icon(Icons.shopping_bag_outlined,size: 35  ,color: Color(0xFF4C53A5),),
            ),
          )



        ],
      ),
    );
  }
}
