import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'detail_items.dart';
import '../seeder/item_seeder.dart';
import '../font/font_assets.dart';
import '../widgets/ratings/rating_bar.dart';

//import '../models/items.dart';

class ShopHomePage extends StatelessWidget {
  ShopHomePage({super.key});

  final items = ItemSeeder().listItems();
  static const String homePageRoutes = '/shop_home_page';
  static const String detailItemRoutes = '/detail_item_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop App",
      darkTheme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        homePageRoutes: (context) => ShopHomePage(),
        detailItemRoutes: (context) => const DetailItemPage(),
      },
      home: Scaffold(
        backgroundColor: const Color.fromARGB(153, 236, 236, 236),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(237, 252, 253, 253),
          title: Text("Products Mall",
              style: FontCustom.customStyleFonts(
                  size: 17,
                  weigth: FontWeight.bold,
                  spacing: 1.2,
                  color: const Color.fromARGB(136, 16, 16, 16)
                )
              ),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: StaggeredGridView.countBuilder(
              itemCount: items.length,
              crossAxisCount: 2,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () => Navigator.pushNamed(context, detailItemRoutes,
                      arguments: item),
                  child: SizedBox(
                    height: 300,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 3,
                      shadowColor: const Color.fromARGB(255, 27, 27, 27),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: 'product_cover_${item.image}',
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(item.image,
                                      fit: BoxFit.fill)),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  item.name,
                                  style: FontCustom.customStyleFonts(
                                      size: 15,
                                      weigth: FontWeight.bold,
                                      spacing: 1.2,
                                      color: const Color.fromARGB(255, 14, 14, 14)),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Rp${item.price}",
                                  style: FontCustom.customStyleFonts(
                                      size: 10,
                                      weigth: FontWeight.normal,
                                      spacing: 1.2,
                                      color: const Color.fromARGB(255, 14, 14, 14)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomRatingBarWidget(
                              items: item,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
