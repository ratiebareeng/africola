import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/screens/agric_shops/shop_detail.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

import 'package:africola/core/models/shop.dart';

class ViewShops extends StatelessWidget {
  static const id = kViewShopsRouteId;
  ViewShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shops'),
      ),
      body: ScrollingContainer(
          child: ListView(
        children: [
          GestureDetector(
            child: ShopsView(sampleShops[0]),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopDetail(sampleShops[0]),
                ),
              );
            },
          ),
          GestureDetector(
            child: ShopsView(sampleShops[1]),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopDetail(sampleShops[1]),
                ),
              );
            },
          ),
          GestureDetector(
            child: ShopsView(sampleShops[2]),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopDetail(sampleShops[2]),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}

class ShopsView extends StatelessWidget {
  Shop shop;

  ShopsView(this.shop);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          color: Colors.grey[400],
          elevation: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24.0,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(shop.logoUrl),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    shop.name,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(shop.contact),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(shop.email),
              )
            ],
          )),
    );
  }
}
