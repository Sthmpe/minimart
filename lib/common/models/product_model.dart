class ProductModel {
  final String id;
  final String name;
  final String description;
  final String color;
  final double price;
  final int quantity;
  final String imagePath;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.color,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      color: map['color'] as String,
      price: (map['price'] as num).toDouble(),
      quantity: map['quantity'] as int,
      imagePath: map['imagePath'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'color': color,
      'price': price,
      'quantity': quantity,
      'imagePath': imagePath,
    };
  }
}
