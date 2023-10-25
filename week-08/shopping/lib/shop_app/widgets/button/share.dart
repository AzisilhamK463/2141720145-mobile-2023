import 'package:flutter/material.dart';

class CustomButtonShare extends StatelessWidget {
  const CustomButtonShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      right: 15,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
        ),
        child: const Icon(
          Icons.share,
          size: 24,
          color: Color.fromARGB(255, 14, 14, 14),
        ),
      ),
    );
  }
}
