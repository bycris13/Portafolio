import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              _NavButton(
                label: 'Home',
                isSelected: false,
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              _NavButton(
                label: 'Skills',
                isSelected: false,
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              _NavButton(
                label: 'Projects',
                isSelected: false,
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              _NavButton(
                label: 'Contect',
                isSelected: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;
  final String label;

  const _NavButton({
    required this.onPressed,
    required this.isSelected,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 35,
        width: isSelected ? 101 : 90,
        decoration: BoxDecoration(
            color: isSelected ? Colors.amber : Colors.blue,
            borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          width: 90,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
