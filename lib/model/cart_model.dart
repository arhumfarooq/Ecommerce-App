class CartItem1 {
  final String name;
  final double price;
  final String proImage;
  int quantity;

  CartItem1({
    required this.name,
    required this.price,
    required this.proImage,
    this.quantity = 1,
  });
}
