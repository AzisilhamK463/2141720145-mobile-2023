import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '/models/items.dart';

class CustomRatingBarWidget extends StatelessWidget {
  const CustomRatingBarWidget({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RatingBar.builder(
          initialRating: items.rating,
          minRating: 0.5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          onRatingUpdate: (rating) {},
          itemSize: 15,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
