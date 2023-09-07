import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSample extends StatelessWidget{
  const CartItemSample({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
    for(int i = 1; i<4; i++)
        Container(
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          child: Row(
            children: [
              Radio(
                value: "",
                groupValue: "",
                onChanged: (index){},
                activeColor: Color(0xFF4C53A5),
              ),
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(right: 10),
                child: Image.asset("assets/images/$i.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Product Title",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                    Text("\$55",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),)
                  ],
                ),
              ),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                  Icon(Icons.delete,size: 24,color: Colors.red,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10
                                )
                              ]
                            ),
                            child: Icon(CupertinoIcons.minus,size: 18,),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('01',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10
                                  )
                                ]
                            ),
                            child: Icon(CupertinoIcons.plus,size: 18,),
                          ),

                        ],
                      )

                    ]
                ),

              ),
            ],
          ),
        )
      ],
    );
  }
}