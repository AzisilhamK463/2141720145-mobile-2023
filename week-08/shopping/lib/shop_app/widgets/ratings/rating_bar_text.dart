import 'package:flutter/material.dart';
import 'package:shopping/shop_app/models/items.dart';
import 'package:shopping/shop_app/font/font_assets.dart';

class CustomRatingBarTextWidget extends StatelessWidget {
  const CustomRatingBarTextWidget({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Text(
        items.rating.toString(),
        style: FontCustom.customStyleFonts(
            size: 15,
            weigth: FontWeight.bold,
            spacing: 1.0,
            color: const Color.fromARGB(255, 14, 14, 14)),
      ),
    );
  }
}
