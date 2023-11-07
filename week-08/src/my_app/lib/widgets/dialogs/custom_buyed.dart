import 'package:flutter/material.dart';
import '/models/items.dart';
import '/font/font_assets.dart';

class CustomBuyedGameWidget extends StatelessWidget {
  const CustomBuyedGameWidget({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    items.setStock = items.stock;
    items.setQuantity = 0;

    return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
                "Produk Berhasil Dibeli",
                style: FontCustom.customStyleFonts(
                    size: 15,
                    weigth: FontWeight.bold,
                    spacing: 1.0,
                    color: const Color.fromARGB(255, 14, 14, 14)
                )
            ),
          ),
        )
    );
  }
}