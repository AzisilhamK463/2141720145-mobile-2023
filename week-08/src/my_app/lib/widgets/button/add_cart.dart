import 'package:flutter/material.dart';
import 'package:my_app/font/font_assets.dart';

class CustomButtonAddCart extends StatelessWidget {
  const CustomButtonAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Color.fromARGB(151, 0, 0, 0),
          width: 1,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.shopping_cart,
            size: 17,
            color: Color.fromARGB(255, 14, 14, 14),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Add+",
            style: FontCustom.customStyleFonts(
                size: 14,
                weigth: FontWeight.bold,
                spacing: 1.0,
                color: const Color.fromARGB(255, 14, 14, 14)),
          ),
        ],
      ),
    );
  }
}
