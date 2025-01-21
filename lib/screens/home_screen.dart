import 'package:flutter/material.dart';
import 'package:web_cris/widgets/navbar.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Navbar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          const _TextPresentation(
              padding: EdgeInsets.only(left: 40),
              text: "Hi I'm",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const _TextPresentation(
              padding: EdgeInsets.only(left: 40),
              text: "Cristian Arias",
              style: TextStyle(color: Colors.grey, fontSize: 28)),
          const _TextPresentation(
              padding: EdgeInsets.only(left: 40),
              text: "A flutter Developer",
              style: TextStyle(fontSize: 28, color: Colors.grey)),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF47C5FB),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(110, 48)),
              child: const Text('About', style: TextStyle(fontSize: 16)),
            ),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

class _TextPresentation extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String text;
  final TextStyle? style;
  const _TextPresentation({
    required this.padding,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
