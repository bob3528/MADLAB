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

        // Main page layout: enable scrolling and centered the content
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 90,
                left: 20,
                right: 20,
                bottom: 30,
              ), // All side margin(test)
              child: ProfileHeader(), // runs ProfileHeader (pic)
            ),
          ),
        ),
      ),
    ); // end MaterialApp w ;
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // Column uses only the vertical space required by children
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 1. Main Avatar
        ClipOval(
          child: Image.asset(
            'assets/images/Gopal_Pro.jpg', // use / instead of \
            width: 200,
            height: 200,
            fit: BoxFit.cover, // Won't distort pic
          ),
        ),
        const SizedBox(height: 10), // SizedBox creates gap
        // 2. Name
        const Text(
          "Gopal",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),

        // 3. Image Tag with border colors
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            // Border with circular edge
            color: const Color.fromARGB(255, 116, 105, 132),
            borderRadius: BorderRadius.circular(88.888),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.school,
                size: 17,
                color: Color.fromARGB(255, 237, 235, 236),
              ),
              SizedBox(width: 4),
              Text("Student", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 40),

        // 4. Bottom Cards Row
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ), // Provide space horizontally for each cards
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Adds spaces btw the cards
            children: [
              // 1st Card
              Container(
                padding: const EdgeInsets.all(16), // Card edge padding
                decoration: const BoxDecoration(
                  color: Colors.purpleAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Align content to left(from start)
                  children: [
                    Image.asset(
                      'assets/images/Gopal_Pro.jpg',
                      width: 38,
                    ),
                    const SizedBox(height: 10),
                    const Text("Hi Im Gopal"),
                    const SizedBox(height: 10),
                    const Text("Gopal Varma"),
                  ],
                ),
              ),
              // 2nd Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.purpleAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Gopal_Pro.jpg',
                      width: 38,
                    ),
                    const SizedBox(height: 10),
                    const Text("Hi Im Gopal"),
                    const SizedBox(height: 10),
                    const Text("Gopal Varma"),
                  ],
                ),
              ),
              // 3rd Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.purpleAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Gopal_Pro.jpg',
                      width: 50,
                    ),
                    const SizedBox(height: 10),
                    const Text("Hi Im Gopal"),
                    const SizedBox(height: 10),
                    const Text("Gopal Varma"),
                  ],
                ),
              ),
              // 4th Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.purpleAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Gopal_Pro.jpg',
                      width: 50,
                    ),
                    const SizedBox(height: 10),
                    const Text("Hi Im Gopal"),
                    const SizedBox(height: 10),
                    const Text("Gopal Varma"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
