import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import '../dialogs/custom_confirmation.dart';
import '../dialogs/custom_message.dart';
import '/models/items.dart';
import '/font/font_assets.dart';

class CustomButtonBuy extends StatelessWidget {
  const CustomButtonBuy({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (items.quantity == 0) {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomMessageWidaget();
              });
        } else {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return CustomConfirmationWidget(items: items);
              });
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: Color.fromARGB(151, 0, 0, 0)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text("Buy Product",
          style: FontCustom.customStyleFonts(
              size: 12,
              weigth: FontWeight.bold,
              spacing: 1.0,
              color: const Color.fromARGB(255, 14, 14, 14))),
    );
  }

  // void _showToast() {
  //   Fluttertoast.showToast(
  //     msg: "Minimal Membeli Satu Produk",
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.CENTER,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.white,
  //     textColor: Colors.blue.shade200,
  //     fontSize: 16.0,
  //   );
  // }
}
