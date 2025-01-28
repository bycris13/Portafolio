import 'package:flutter/material.dart';
import 'package:web_cris/widgets/navbar.dart';
// ignore: depend_on_referenced_packages
import 'package:animated_text_kit/animated_text_kit.dart';

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
      body: ListView(
        children: [
          const SizedBox(height: 70),
          const _TextPresentation(
              padding: EdgeInsets.only(left: 40),
              text: "Hi I'm",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const _TextPresentation(
              padding: EdgeInsets.only(left: 40),
              text: "Cristian Arias",
              style: TextStyle(
                  color: Color.fromARGB(255, 199, 197, 197), fontSize: 28)),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            // ignore: deprecated_member_use
            child: TypewriterAnimatedTextKit(
              text: const ['A software developer', 'A flutter developer'],
              speed: const Duration(milliseconds: 100),
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 199, 197, 197), fontSize: 28),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF47C5FB),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(10, 45)),
                  child: const Text('About'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 170),
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 30, 30, 33),
          ),
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 30, 30, 33),
          ),
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
