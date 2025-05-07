// main.dart
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override

  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
          Container(
            child: Column(
              children: [
                Row
                (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                        Padding(
                          padding:const EdgeInsets.only(top: 30, left: 20, right: 20),
                          child:Container(
                            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 75),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.arrow_back, color: Colors.black),
                            
                          ),
                        ),
                      SizedBox(height: 10),

                      Container(
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 80),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        
                        child: Image.asset(
                          "images/headphone1.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                         child: Image.asset(
                          "images/headphone2.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                         child: Image.asset(
                          "images/headphone3.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                         child: Image.asset(
                          "images/headphone4.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                          ),
                      ),
                    ],
                  ),
                ),
                  ]
                ),
                SizedBox(width: 30),
                Expanded(child: 
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 350,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "images/headphone.jpg",
                              height: 400,
                              width: 370,
                              fit: BoxFit.cover),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.favorite_border , color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))


              //   Expanded(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Container(
              //           padding: EdgeInsets.all(8),
              //           decoration: BoxDecoration(
              //             border: Border.all(color: Colors.grey , width: 1),
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           child: Icon(Icons.favorite_border , color: Colors.red),
              //         ),
              //         SizedBox(width: 10),
              //         Expanded(
              //           child: Align(
              //             alignment: Alignment.topRight,
              //             child: Image.asset(
              //               "images/headphone.jpg", 
              //               height: 350, 
              //               // width: double.infinity,
              //               fit: BoxFit.cover),
              //         )
              //       )
              //     ],
              //   ),
              // ),   
            ],

            
          ),
          Column(
            children: [
               Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sony WH-1000XM4",
                                  style: TextStyle(
                                    fontSize: 24, 
                                    fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 170),
                                Icon(Icons.star_border_outlined,color: const Color.fromARGB(255, 228, 208, 24),),
                                Text(" 4.9", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            
                            SizedBox(height: 20),
                            Text(
                              "Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.info_outline, color: Colors.pink,),
                                SizedBox(width: 8),
                                Text(
                                  "Product Specifications",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 0, 0)),
                              ],
                            ),
                            SizedBox(height: 10),

                            Container(
                              height: 1,
                              color: Colors.grey,
                              margin: EdgeInsets.symmetric(vertical: 10),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.color_lens , color: Colors.pink),
                                SizedBox(width: 8),
                                Text("Colors"),
                                Spacer(),
                                Row(
                                  children: [
                                     Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.pink,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.grey
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                              "\$349.99",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 60, width: 200),
                            ElevatedButton(onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            
                            child: Text(
                              "Add To Card ",
                              style: TextStyle(color: Colors.white),
                            ),),
                              ]
                            )
                        ],
                        ),
                      )
                    ],
            
          )
                ],
              ),
            )
              
        ),
      );
  
  }
}
