class Item {
  String name, image;
  int price, stock, quantity;
  double rating;

  Item({
    required this.name,
    required this.price,
    required this.image,
    required this.stock,
    required this.quantity,
    required this.rating,
  });

  set setQuantity(int value) {
    quantity = value;
  }

  set setStock(int value) {
    stock = value;
  }
}