import 'package:flutter/material.dart';
import '/models/items.dart';

class CustomImageBackground extends StatelessWidget {
  const CustomImageBackground({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {

    return ShaderMask(
      shaderCallback: (Rect shape) {
        return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.black]).createShader(shape);
      },
      blendMode: BlendMode.dstIn,
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        child: Hero(
          tag: 'Product_cover_${items.image}',
          child: Image.asset(
            items.image,
            fit: BoxFit.cover,
            //height: 580,
          ),
        ),
      ),
    );
  }
}