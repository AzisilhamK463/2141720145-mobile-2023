import 'package:flutter/material.dart';
//import 'package:shopping/shop_app/widgets/button/minus.dart';
//import 'package:shopping/shop_app/widgets/button/plus.dart';
import '/models/items.dart';
import '/font/font_assets.dart';

class CustomStockWidget extends StatefulWidget {
  const CustomStockWidget({super.key, required this.items});
  final Item items;

  @override
  State<StatefulWidget> createState() => _CustomStockWidgetState();
}

class _CustomStockWidgetState extends State<CustomStockWidget> {
  @override
  Widget build(BuildContext context) {
    int maxStock = widget.items.stock;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Stock Product: ${widget.items.stock.toString()}",
            style: FontCustom.customStyleFonts(
                size: 15,
                weigth: FontWeight.bold,
                spacing: 1.0,
                color: const Color.fromARGB(255, 14, 14, 14)),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (widget.items.quantity == 0) {
                    setState(() {
                      widget.items.quantity = 0;
                    });
                  } else {
                    setState(() {
                      widget.items.quantity--;
                      widget.items.stock++;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const CircleBorder(),
                  minimumSize: const Size(30, 30),
                  padding: EdgeInsets.zero,
                  side: const BorderSide(color: Color.fromARGB(151, 0, 0, 0)),
                ),
                child: const Icon(
                  Icons.remove,
                  size: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.items.quantity.toString(),
                  style: FontCustom.customStyleFonts(
                    size: 15,
                    weigth: FontWeight.bold,
                    spacing: 1.0,
                    color: const Color.fromARGB(255, 14, 14, 14),
                  )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (widget.items.quantity == maxStock) {
                    setState(() {
                      widget.items.quantity = maxStock;
                    });
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
                  side: const BorderSide(color: Color.fromARGB(151, 0, 0, 0)),
                ),
                child: const Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
