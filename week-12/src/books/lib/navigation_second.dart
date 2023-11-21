import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Azis Ilham Kurniawan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Magenta'),
              onPressed: () {
                color = const Color.fromRGBO(255, 0, 255, 1);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = const Color.fromRGBO(255, 255, 0, 1);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Cyan'),
              onPressed: () {
                color = const Color.fromRGBO(0, 255, 255, 1);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Orange'),
              onPressed: () {
                color = Colors.orange;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                color = Colors.purple;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                color = Colors.green;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Blue Grey'),
              onPressed: () {
                color = Colors.blueGrey;
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
