import 'package:flutter/material.dart';
import '/models/items.dart';
import '/font/font_assets.dart';
import '../widgets/button/add_cart.dart';

class CustomWidgetDetailItemName extends StatelessWidget {
  const CustomWidgetDetailItemName({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            items.name,
            overflow: TextOverflow.clip,
            style: FontCustom.customStyleFonts(
                size: 30,
                weigth: FontWeight.bold,
                spacing: 1.0,
                color: const Color.fromARGB(255, 14, 14, 14)),
          ),
        ),
        const CustomButtonAddCart(),
        const SizedBox(height: 20),
      ],
    );
  }
}
