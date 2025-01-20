import 'package:flutter/material.dart';
import 'package:web_cris/widgets/navbar.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Navbar(),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
