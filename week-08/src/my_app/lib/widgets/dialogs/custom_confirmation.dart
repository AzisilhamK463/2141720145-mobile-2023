import 'package:flutter/material.dart';
import '/models/items.dart';
import '../dialogs/custom_buyed.dart';
import '/font/font_assets.dart';

class CustomConfirmationWidget extends StatelessWidget {
  const CustomConfirmationWidget({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
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
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Name: ",
                    style: FontCustom.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: const Color.fromARGB(255, 14, 14, 14)
                    ),
                  ),
                  Text(
                    items.name,
                    style: FontCustom.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Product Quantity: ",
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                  Text(
                      items.quantity.toString(),
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Product Price: ",
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                  Text(
                      items.price.toString(),
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Total Payment: ",
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                  Text(
                      (items.price * items.quantity).toString(),
                      style: FontCustom.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: const Color.fromARGB(255, 14, 14, 14))
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1,),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CustomBuyedGameWidget(items: items,);
                    }
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(151, 0, 0, 0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                "Konfirmasi",
                  style: FontCustom.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: Colors.white
                  )
              )
            )
          ],
        ),
      ),
    );
  }
}