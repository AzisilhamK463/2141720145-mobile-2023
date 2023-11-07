import 'package:flutter/material.dart';
import '/models/items.dart';

class CustomButtonPlus extends StatefulWidget {
  const CustomButtonPlus({super.key, required this.items});
  final Item items;

  @override
  State<CustomButtonPlus> createState() => _CustomButtonPlusState();
}

class _CustomButtonPlusState extends State<CustomButtonPlus> {
  late int maxStock;

  @override
  void initState() {
    super.initState();
    maxStock = widget.items.stock;
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: () {
          if (widget.items.quantity >= maxStock) {
           setState(() { widget.items.quantity = maxStock; });
          } else {
             setState(() {
               widget.items.quantity++;
               widget.items.stock--;
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
          Icons.add,
          size: 15,
          color: Colors.black,
        ),
      );
  }
}