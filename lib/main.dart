
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryScreen(),
    );
  }
}

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get device screen dimensions
    Size screenSize = MediaQuery.of(context).size;

    // Apply 600px breakpoint
    bool isTablet = screenSize.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery Demo"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(isTablet ? 32.0 : 16.0),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isTablet
                ? Colors.teal.shade100
                : Colors.orange.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.restaurant_menu,
                size: 65,
                color: Colors.deepOrange,
              ),
              const SizedBox(height: 15),
              const Text(
                "Recipe Book App",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Screen Width: ${screenSize.width.toStringAsFixed(1)}",
                style: TextStyle(fontSize: isTablet ? 22 : 16),
              ),
              const SizedBox(height: 10),
              Text(
                "Screen Height: ${screenSize.height.toStringAsFixed(1)}",
                style: TextStyle(fontSize: isTablet ? 22 : 16),
              ),
              const SizedBox(height: 15),
              Text(
                "Device Type: ${isTablet ? 'Tablet/Desktop' : 'Mobile'}",
                style: TextStyle(
                  fontSize: isTablet ? 24 : 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                isTablet
                    ? "Tablet/Desktop Layout"
                    : "Mobile Layout",
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
