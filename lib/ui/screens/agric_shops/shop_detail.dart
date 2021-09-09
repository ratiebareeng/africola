import 'package:africola/core/models/shop.dart';
import 'package:africola/ui/screens/agric_shops/shop_supplies.dart';
import 'package:flutter/material.dart';

class ShopDetail extends StatelessWidget {
  final Shop shop;

  ShopDetail(this.shop);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
      ),
      body: ListView(
        children: [
          ShopSupplies(),
        ],
      ),
    );
  }
}
