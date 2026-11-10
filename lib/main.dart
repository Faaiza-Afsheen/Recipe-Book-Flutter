
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
          title: const Text("Responsive UI"),
          backgroundColor: Colors.orange,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // Desktop or wide screen layout
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange.shade100,
                      child: const Center(
                        child: Text(
                          "Recipe Sidebar",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Main Recipe Content",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // Mobile or narrow screen layout
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange.shade100,
                      child: const Center(
                        child: Text(
                          "Recipe Header",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Main Recipe Content",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
