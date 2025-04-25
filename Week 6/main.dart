// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  final List<String> ingredientImages = 
  [
    'images/butter.png',
    'images/chicken.png',
    'images/garlic.png',
    'images/pasta.png',
    'images/butter.png',
    'images/chicken.png',
    'images/garlic.png',
    'images/pasta.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1600891964599-f61ba0e24092',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "White sauce pasta is also called Bechamel sauce pasta. "
                      "The Bechamel sauce is made from a white roux (butter and flour) and milk "
                      "and is used as a base for many sauces. It is often considered one of the "
                      "mother sauces of French cuisine.",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 24),

                    Text(
                      "Ingredients",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),

                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ingredientImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(ingredientImages[index]),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
