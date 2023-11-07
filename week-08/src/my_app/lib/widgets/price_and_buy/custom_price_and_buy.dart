import 'package:flutter/material.dart';
import '/models/items.dart';
import '../button/buy.dart';
import '../price_and_buy/custom_price.dart';

class CustomPriceAndBuy extends StatelessWidget {
  const CustomPriceAndBuy({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPriceWidget(items: items,),
          CustomButtonBuy(items: items,),
        ],
      ),
    );
  }
}