import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


import '../widgets/item_app_bar.dart';
import '../widgets/item_bottom_nav.dart';

class ItemPage extends StatelessWidget{

  List<Color> clr = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];

  ItemPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),child: Image.asset("assets/images/1.png",height: 180,),),
          Arc(

              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30, child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 35,bottom: 15),
                  child: Row(
                    children: [
                      Text("Product Title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),)
                    ],
                  ),),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 24,
                          itemPadding: EdgeInsets.symmetric(horizontal: 5),
                          itemBuilder: (context, _)=> Icon((Icons.favorite),color: Color(0xFF4C53A5),), onRatingUpdate: (double value) {  },
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0,3)
                                )
                              ]
                            ),
                            child: Icon(CupertinoIcons.minus,size: 15,),
                          ),
                          Container(margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("01",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0,3)
                                  )
                                ]
                            ),
                            child: Icon(CupertinoIcons.plus,size: 15,),
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text("This is more detailed description of the product. You can write here more about the product.This is more detailed description of the product.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xFF4C53A5)),),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Text("Size:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          for(int i=5; i<10; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8
                                )
                              ]
                            ),

                            child: Text("$i",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),

                          )
                        ],
                      )
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text("Colors:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            for(int i=0; i<5; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: clr[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8
                                      )
                                    ]
                                ),

                                //child: Text("$i",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),

                              )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ))


        ],
      ),
      bottomNavigationBar: ItemBottomNav(),
    );
  }
}