import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void doSomething() {
    // method
    print("FreeKepci!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold provides appBar and body
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: const Color.fromARGB(255, 143, 67, 196),
          title: const Text("MyProfile"),
        ),
        // Main page layout: image and wordings centered vertically
        body: Center(
          // Centers(move) horizontally
          child: Column(
            // Places vertically
            children: [
              // children use []
              const SizedBox(
                height: 20,
              ), // Provides space based of width or height
              ClipOval(
                child: Image.asset(
                  'assets/images/Gopal_Pro.jpg', // use / instead of \
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover, // BoxFit.cover won't distort pic
                ),
              ),
            ],
          ),
        ),
      ),
    ); // end MaterialApp w ;
  }
}
