import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: <Widget>[
                    const Text(
                      "Nama Item",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(item.name ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: [
                    const Text(
                      "Harga Item",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12
                      ),
                    ),
                    Text(
                      item.price.toString(),
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      )
    );
  }
}
