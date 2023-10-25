import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/item_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = HomePage().items;

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/homepage': (context) => HomePage(),
        '/item': (context) => const ItemPage(),
      },
      title: 'Flutter Layout: Azis Ilham Kurniawan | 2141720145',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daftar Item"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage("assets/profile.jpg"),
                      width: 75,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Azis Ilham Kurniawan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2141720145",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () => Navigator.pushNamed(context, "/item",arguments: item),
                      child: Card(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Text(item.name.toString())),
                              Expanded(
                                child: Text(
                                  item.price.toString(),
                                  textAlign: TextAlign.end,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
