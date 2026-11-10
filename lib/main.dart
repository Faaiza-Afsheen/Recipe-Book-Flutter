
import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book App'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text(
          'Welcome to Recipe Book App!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
