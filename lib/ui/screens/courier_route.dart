import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class CourierRoute extends StatelessWidget {
  static const id = kCourierRouteId;
  const CourierRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courier Home'),
      ),
      body: ScrollingContainer(
        child: Column(
          children: [
            Text(
                'AUTOMATICALLY LISTED AND ONE CHOSSES THEIR PREFERENCE ACCORDING TO LOCATION AND PRICE ONCE A CUSTOMER NEEDS DELIVERY'),
          ],
        ),
      ),
    );
  }
}
