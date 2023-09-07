import 'package:ecom_design_one_list/pages/cart_page.dart';
import 'package:ecom_design_one_list/pages/home_page.dart';
import 'package:ecom_design_one_list/pages/item_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
        ),
      //home: CartPage(),
      routes: {
          "/":(context)=>HomePage(),
        "cartPage":(context)=>CartPage(),
        "itemPage":(context)=>ItemPage()
      },
    );
  }
}

