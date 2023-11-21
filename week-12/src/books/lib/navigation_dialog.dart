import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Azis Ilham Kurniawan'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            showColorDialog(context);
          },
        ),
      ),
    );
  }

  showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Very Important Question'),
            content: const Text('Please Choose a Color'),
            actions: <Widget>[
              TextButton(
                child: const Text('Black'),
                onPressed: () {
                  color = Colors.black12;
                  Navigator.pop(context, color);
                },
              ),
              TextButton(
                child: const Text('Purple'),
                onPressed: () {
                  color = Colors.purple;
                  Navigator.pop(context, color);
                },
              ),
              TextButton(
                child: const Text('Blue'),
                onPressed: () {
                  color = Colors.blue.shade800;
                  Navigator.pop(context, color);
                },
              ),
              TextButton(
                child: const Text('Orange'),
                onPressed: () {
                  color = Colors.orange;
                  Navigator.pop(context, color);
                },
              ),
            ],
          );
        });
    setState(() {});
  }
}
