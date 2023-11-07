import 'package:flutter/material.dart';
import '/models/items.dart';

class CustomButtonMinus extends StatefulWidget {
  const CustomButtonMinus({super.key, required this.items});
  final Item items;

  @override
  State<CustomButtonMinus> createState() => _CustomButtonMinusState();
}

class _CustomButtonMinusState extends State<CustomButtonMinus> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.items.quantity == 0) {
          setState(() {
            widget.items.quantity = 0;
          });
        } else {
          setState(() {
            widget.items.quantity--;
            widget.items.stock++;
          });
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        minimumSize: const Size(30, 30),
        padding: EdgeInsets.zero,
        side: BorderSide(color: Colors.blue.shade200),
      ),
      child: const Icon(
        Icons.remove,
        size: 15,
        color: Colors.black,
      ),
    );
  }
}
