import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Wireframe palette: grayscale only
const Color wfLine = Color(0xFF424242);
const Color wfFill = Color(0xFFEEEEEE);
const Color wfText = Color(0xFF212121);
const Color wfMuted = Color(0xFF9E9E9E);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greenify Wireframe',
      home: const GreenifyLogin(),
    );
  }
}

/// Reusable outlined box used for inputs, buttons and placeholders.
class WireBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Color fill;
  final EdgeInsets padding;
  final Alignment alignment;
  final Widget? child;

  const WireBox({
    super.key,
    this.width,
    this.height,
    this.fill = Colors.white,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: fill,
        border: Border.all(color: wfLine, width: 1.5),
      ),
      child: child,
    );
  }
}

/// Gray bar that stands in for a line of text.
class TextBar extends StatelessWidget {
  final double width;
  final double height;

  const TextBar({super.key, required this.width, this.height = 12});

  @override
  Widget build(BuildContext context) {
    return Container(width: width, height: height, color: wfMuted);
  }
}

class GreenifyLogin extends StatelessWidget {
  const GreenifyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 320,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo placeholder + app name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    WireBox(
                      width: 70,
                      height: 70,
                      fill: wfFill,
                      child: Icon(Icons.close, size: 40, color: wfMuted),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Greenify',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: wfText,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // Heading
                const Text(
                  'Welcome to Greenify',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: wfText,
                  ),
                ),

                const SizedBox(height: 8),

                // Subtitle
                const Text(
                  'Lets grow some plants!',
                  style: TextStyle(fontSize: 14, color: wfText),
                ),

                const SizedBox(height: 35),

                // Username field
                const WireBox(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Username',
                    style: TextStyle(color: wfMuted),
                  ),
                ),

                const SizedBox(height: 18),

                // Password field
                const WireBox(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Password',
                    style: TextStyle(color: wfMuted),
                  ),
                ),

                const SizedBox(height: 20),

                // Login button
                const WireBox(
                  width: double.infinity,
                  height: 50,
                  fill: wfFill,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: wfText,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Forgot password link
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 11,
                    color: wfText,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}