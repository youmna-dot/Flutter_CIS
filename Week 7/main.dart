// main.dart
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  int quantity=1;

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
             Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 4),
              ),
              
              child:Center( 
                child:Icon(
                  Icons.arrow_back, 
                  color: Colors.black,
                  size: 30),
                ),),
          title: Text("Details", 
               style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600,fontSize: 30), ),
                centerTitle: true,
          actions: [
            Container(
              child: Icon(Icons.favorite, color: Colors.red, size: 50,),
            )
          ],
        ),
        body: Column
        (
          children: 
          [Image.asset
            ( //fit: BoxFit.cover,
             "images/chair.png",
             width: double.infinity,
             height: 300,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chair",style: TextStyle(color:const Color.fromARGB(255, 134, 122, 156) , fontWeight: FontWeight.w600,fontSize: 30)),
                    Text("\$212", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25 ),),
                  ]
                ),
                Text("Minimalist Style With pillow" ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 41), textAlign: TextAlign.start,),
                //SizedBox(height: 10),
                Text("The chair is beautiful, loren ipg sit food near all day will go to school are very nice ,The chair is beautiful, loren ipg sit food near all day will go to school are very nice,The chair is beautiful, loren ipg sit food near all day will go to school are very nice.", 
                style: TextStyle(color: const Color.fromARGB(255, 66, 96, 186), fontSize:15),)
                , 
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var color in [
                    const Color.fromARGB(255, 128, 20, 12) ,
                    const Color.fromARGB(255, 32, 148, 36),
                    const Color.fromARGB(255, 27, 93, 179), 
                    const Color.fromARGB(255, 162, 6, 66)])
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 0.5),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                          ),
                        ),
                        //SizedBox(width: 20),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                          child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if(quantity >1) quantity--;
                          },),
                        Text("$quantity" , style: TextStyle(fontSize: 25)),
                        IconButton(icon: Icon(Icons.add),
                        onPressed: ()
                        {
                          quantity++;
                        },),

                          ],
                        )
                        )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      child: Text("Add to cart", 
                      style: TextStyle(fontSize: 18,color: Colors.white),),
                      ) 
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton( icon: Icon(Icons.favorite_border),
                      onPressed: (){},),
                    )
                  ],
                )
                
                  
                
              ],
            )
          ],
        ) 
        
      ),
      );
    
  }
  
}
