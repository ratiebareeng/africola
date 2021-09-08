class Shop {
  final String name;
  final String contact;
  final String location;
  final String email;
  final String logoUrl;

  Shop(this.name, this.contact, this.location, this.email, this.logoUrl);
}

List<Shop> sampleShops = [
  Shop('The Farm Shop', '+267 31698000', 'Sebele', 'sales@farmshop.bw',
      'assets/images/shop_1.png'),
  Shop('XYZ Agriculture Supplies', '+267 39568778', 'Gaborone',
      'xyzagric@africola.bw', 'assets/images/shop_2.png'),
  Shop('Planting Season Plug', '+267 31698000', 'Sebele',
      'sales@plantingseason.bw', 'assets/images/shop_3.png')
];
