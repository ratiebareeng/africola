class Product {
  final String name;
  final String price;
  final String productUrl;

  Product(this.name, this.price, this.productUrl);
}

List<Product> sampleSeeds = [
  Product('Tomatoes', 'P8.00', 'assets/images/product_tomatoes.png'),
  Product('Onions', 'P8.00', 'assets/images/product_onions.png'),
  Product('Spinach', 'P8.00', 'assets/images/product_spinach.png'),
  Product('Carrots', 'P8.00', 'assets/images/product_carrots.png'),
];

List<Product> sampleSeedsExtra = [
  Product('Beetroot', 'P8.00', 'assets/images/product_beetroot.png'),
  Product('Bell Peppers', 'P8.00', 'assets/images/product_bellpeppers.png'),
  Product('Butternut', 'P8.00', 'assets/images/product_butternut.png'),
  Product('Chillies', 'P8.00', 'assets/images/product_chillies.png'),
];

List<Product> samplePesticides = [
  Product(
      'Organic Fertiliser', 'P80.00', 'assets/images/product_fertiliser2.png'),
  Product('Nitrogen Pack', 'P99.00', 'assets/images/product_pesticide1.png'),
  Product('NPK Powder', 'P68.00', 'assets/images/product_pesticide3.png'),
  Product('Liquid Organic', 'P120.00', 'assets/images/product_pesticide1.png'),
];

List<Product> sampleMachinery = [
  Product('WheelBarrow', 'P320.00', 'assets/images/product_wheelbarrow.png'),
  Product('Tractors Parts', 'P700.00', 'assets/images/product_tractors.png'),
  Product('Spades', 'P80.00', 'assets/images/product_spade.png'),
  Product('Hose Pipe', 'P125.00', 'assets/images/product_hosepipe.png'),
];
