import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Insta extends StatefulWidget {
  const Insta({ Key? key }) : super(key: key);

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leading:const  Icon(Icons.arrow_back_ios,color: Colors.black,),
        
        title: const Text('Wanda.s', style:TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 150,
             
              child: Row(
                children: [
                  Container(
                    width: 150,
                    
                    padding: EdgeInsets.only(
                      left: 5
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        CircleAvatar(
                          
                          radius: 50,
                        ),
                        Text('Dhiraj Subedi',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Text('From Bharatpur',style: TextStyle(fontSize: 10,)),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    
                    child: Column(
                      
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          
                          child:Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              profileDetails('50k', 'Post'),
                              SizedBox( width: 10,),
                              profileDetails('100', 'Followers'),
                              SizedBox( width: 10,),
                              profileDetails('100', 'Following'),
                            ],
                          )
                        ),
                        Expanded(child: Container(
                          child: Row(
                            children: [
                              // ignore: prefer_const_constructors
                              Expanded(child: Container(child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                                  shape:MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: Colors.red,
                                      width: 3)
                                    )
                                  )
                                ),
                                onPressed: (){}, child: Text('Follow')))),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                 border: Border.all(
                                   width: 3,color: Colors.blue,
                                  
                                 ),
                                 shape: BoxShape.circle,
                                 
                                 
                                 
                                  // borderRadius: BorderRadius.circular(50),
                                  // border: Border.all(width: 5,color: Colors.red),
                                ),
                                child: Icon(Icons.arrow_downward,color: Colors.red,),
                                
                              ),
                              SizedBox(width: 20,)
                            ],
                          ),
                          
                        ))
                      ],
                    ),
                   
                  ),)
                  
                ],
              ),
            ),





            Container(
              height: 100,
              child:ListView.builder(
                scrollDirection:Axis.horizontal,
                itemCount:10,
                itemBuilder: (context, index) {
                  return Column(
                    children: 
                      [
                        Container(
                        margin: EdgeInsets.all(5),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          
                          shape: BoxShape.circle,
                          color: Colors.orange,
                          
                        ),
                        
                        
                      
                      ),
                      Text('title')
                    ],
                  );
                  
              
                }
              ),

            ),
            Container(
              height: 90,
              color: Colors.green,
            ),
            Expanded(
              child: Container(
                
                child:GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                  
                  ),
                  itemBuilder: (context,indext){
                    return Container(
                      height: 20,
                      margin: EdgeInsets.all(5),
                      child: Card(
                        
                      ),
                    );
                  }
                  
                  ),
              ),
            ),
          ],
        ),

        )
    );
  }

  Widget profileDetails(String text1,text2){
    return Container(
      child: Column(children: [Text(text1,style: TextStyle(
        fontSize: 24
      ),),
      Text(text2,style: TextStyle(
        fontSize: 14)
      )
      ]),
    );
  }
}