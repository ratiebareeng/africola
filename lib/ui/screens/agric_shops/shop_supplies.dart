import 'package:africola/core/models/product.dart';
import 'package:flutter/material.dart';

class ShopSupplies extends StatelessWidget {
  const ShopSupplies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Seeds',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            StoreShelf(sampleSeeds),
            StoreShelf(sampleSeedsExtra),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Pesticides & Fertiliser',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            StoreShelf(samplePesticides),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Machinery & Equipment',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            StoreShelf(sampleMachinery),
          ]),
    );
  }
}

class StoreShelf extends StatelessWidget {
  final List<Product> products;

  const StoreShelf(this.products);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            child: Column(
              children: [
                ListTile(
                  title: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(products[0].productUrl),
                  ),
                  subtitle: Text(
                    products[0].name,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 80.0,
            width: 80.0,
            child: Column(
              children: [
                ListTile(
                  title: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(products[1].productUrl),
                  ),
                  subtitle: Text(
                    products[1].name,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 80.0,
            width: 80.0,
            child: Column(
              children: [
                Expanded(
                  child: ListTile(
                    title: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(products[2].productUrl),
                    ),
                    subtitle: Text(
                      products[2].name,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 80.0,
            width: 80.0,
            child: Column(
              children: [
                ListTile(
                  title: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(products[3].productUrl),
                  ),
                  subtitle: Text(
                    products[3].name,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
