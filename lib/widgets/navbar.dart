import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // Cambia según el tamaño de la pantalla
    double widthFactor = screenWidth > 1200 ? 0.2 : 0.9;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: widthFactor, // Ocupa el 20% del ancho de la pantalla
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _NavButton(
                      label: 'Home', isSelected: false, onPressed: () {}),
                  const SizedBox(width: 5),
                  _NavButton(
                      label: 'Skills', isSelected: false, onPressed: () {}),
                  const SizedBox(width: 5),
                  _NavButton(
                      label: 'Projects', isSelected: false, onPressed: () {}),
                  const SizedBox(width: 5),
                  _NavButton(
                      label: 'Contact', isSelected: false, onPressed: () {}),
                ],
              ),
            ),
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[900] : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
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
    );
  }
}
