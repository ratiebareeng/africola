import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class AgricShopsRoute extends StatelessWidget {
  static const id = kAgricShopRouteId;
  const AgricShopsRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agric Shops Home'),
      ),
      body: ScrollingContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('AVAILABILITY OF GOODS (Seed and farm implements)'),
            Text('NEW PRODUCTS (products being sold)'),
          ],
        ),
      ),
    );
  }
}
