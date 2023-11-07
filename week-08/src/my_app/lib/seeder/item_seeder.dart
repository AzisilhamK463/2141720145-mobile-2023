import '../models/items.dart';

class ItemSeeder {
  List<Item> listItems() => [
        Item(
            name: "Aqua",
            price: 3000,
            image: "assets/Aqua-300ml.png",
            stock: 80,
            quantity: 0,
            rating: 3.5),
        Item(
            name: "Coca Cola",
            price: 15000,
            image: "assets/cccl.jpg",
            stock: 35,
            quantity: 0,
            rating: 4.5),
        Item(
            name: "Chitato",
            price: 8000,
            image: "assets/ctt.jpg",
            stock: 47,
            quantity: 0,
            rating: 3.1),
        Item(
            name: "Fanta",
            price: 6000,
            image: "assets/fnt.jpg",
            stock: 60,
            quantity: 0,
            rating: 4.2),
        Item(
            name: "Fruit Tea",
            price: 5000,
            image: "assets/ft.jpg",
            stock: 36,
            quantity: 0,
            rating: 4.4),
        Item(
            name: "Indomie Goreng",
            price: 3500,
            image: "assets/ind.png",
            stock: 105,
            quantity: 0,
            rating: 5.0),
        Item(
            name: "Lays",
            price: 5000,
            image: "assets/lays.jpg",
            stock: 48,
            quantity: 0,
            rating: 3.9),
        Item(
            name: "Teh Pucuk Harum",
            price: 5000,
            image: "assets/pck.jpg",
            stock: 70,
            quantity: 0,
            rating: 4.4),
        Item(
            name: "Mie Sedap Goreng",
            price: 3500,
            image: "assets/sdp.jpg",
            stock: 98,
            quantity: 0,
            rating: 5.0),
        Item(
            name: "Sprite",
            price: 3000,
            image: "assets/sprt.jpg",
            stock: 54,
            quantity: 0,
            rating: 4.3),
      ];
}
