import 'package:flutter/material.dart';
import '../models/items.dart';
import '../font/font_assets.dart';
import '../widgets/button/share.dart';
import '../widgets/custom_name.dart';
import '../widgets/price_and_buy/custom_price_and_buy.dart';
import '../widgets/ratings/rating_bar.dart';
import '../widgets/button/back.dart';
import '../widgets/image/custom_background.dart';
import '../widgets/stocks/custom_stock.dart';
import '../widgets/ratings/rating_bar_text.dart';

class DetailItemPage extends StatelessWidget {
  const DetailItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)!.settings.arguments as Item;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(237, 252, 253, 253),
          title: const Text("Produk Detail"),
          titleTextStyle: FontCustom.customStyleFonts(
              size: 17,
              weigth: FontWeight.bold,
              spacing: 1.2,
              color: Colors.white),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    CustomImageBackground(
                      items: items,
                    ),
                    CustomButtonBack(
                      items: items,
                      context: context,
                    ),
                    const CustomButtonShare(),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 620,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 20,
                      spreadRadius: 3,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomWidgetDetailItemName(items: items),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomRatingBarWidget(
                            items: items,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomRatingBarTextWidget(items: items),
                        ],
                      ),
                      const Spacer(flex: 1),
                      SizedBox(
                        height: 400,
                        child: Hero(
                        tag: 'product_cover_${items.image}',
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(items.image, fit: BoxFit.fill,)),
                      ),
                      ),
                      const Spacer(flex: 1),
                      CustomStockWidget(
                        items: items,
                      ),
                      const Spacer(flex: 1),
                      CustomPriceAndBuy(
                        items: items,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
