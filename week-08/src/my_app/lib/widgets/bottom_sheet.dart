import '../widgets/price_and_buy/custom_price.dart';
import '/models/items.dart';
import 'package:flutter/material.dart';
import '../widgets/button/buy.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade100,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPriceWidget(
            items: items,
          ),
          CustomButtonBuy(
            items: items,
          ),
        ],
      ),
    );
  }
}
