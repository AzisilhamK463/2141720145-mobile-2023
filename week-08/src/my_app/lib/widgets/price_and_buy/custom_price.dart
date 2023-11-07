import 'package:flutter/material.dart';
import '/models/items.dart';
import '/font/font_assets.dart';

class CustomPriceWidget extends StatelessWidget {
  const CustomPriceWidget({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Price:",
          style: FontCustom.customStyleFonts(
            size: 15,
            weigth: FontWeight.bold,
            spacing: 1.0,
            color: const Color.fromARGB(255, 14, 14, 14)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Rp${items.price.toString()}",
          style: FontCustom.customStyleFonts(
            size: 25,
            weigth: FontWeight.bold,
            spacing: 1.0,
            color: const Color.fromARGB(255, 14, 14, 14)),
        ),
      ],
    );
  }
}