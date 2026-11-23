import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreeniFy',
      home: const GreenifyLogin(),
    );
  }
}

class GreenifyLogin extends StatelessWidget {
  const GreenifyLogin({super.key});

  static const Color leafGreen = Color(0xFF2E9E10);
  static const Color buttonGreen = Color(0xFF4A9B2A);
  static const Color tileGray = Color(0xFFC9C5C5);
  static const Color fieldGray = Color(0xFFDADADA);

  static const List<BoxShadow> softShadow = [
    BoxShadow(
      color: Color(0x40000000),
      blurRadius: 6,
      offset: Offset(0, 3),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90, bottom: 30),
              child: Column(
                children: [
                  // Logo + app name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 76,
                        height: 76,
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tileGray,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: softShadow,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: leafGreen,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                          ),
                          child: Center(
                            child: Transform.rotate(
                              angle: 0.8,
                              child: Container(
                                width: 1.5,
                                height: 40,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Text(
                        'GreeniFy',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Color(0x66000000),
                              blurRadius: 6,
                              offset: Offset(2, 3),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    'Welcome to GreeniFy',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Lets grow some plants!',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),

                  const SizedBox(height: 40),

                  // Username
                  Container(
                    width: 240,
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: fieldGray,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: softShadow,
                    ),
                    child: const Text(
                      'Username',
                      style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 14),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Password
                  Container(
                    width: 240,
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: fieldGray,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: softShadow,
                    ),
                    child: const Text(
                      'Password',
                      style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 14),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Login button
                  Container(
                    width: 240,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: buttonGreen,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: softShadow,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}