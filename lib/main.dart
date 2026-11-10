
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row, Column & Stack"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Row widget
              const Text(
                "Recipe Actions",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.star, color: Colors.orange, size: 35),
                  Icon(Icons.favorite, color: Colors.red, size: 35),
                  Icon(Icons.thumb_up, color: Colors.blue, size: 35),
                ],
              ),

              const SizedBox(height: 30),

              // Stack widget
              const Text(
                "Featured Recipe",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const Text(
                    "Delicious Recipe!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Column widget
              const Text(
                "Recipe Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text("Recipe: Vegetable Biryani"),
              const Text("Cooking Time: 30 minutes"),
              const Text("Rating: 4.5 stars"),
            ],
          ),
        ),
      ),
    );
  }
}
