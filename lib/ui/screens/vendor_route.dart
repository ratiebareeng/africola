import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class VendorRoute extends StatelessWidget {
  static const id = kVendorRouteId;
  const VendorRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Home'),
      ),
      body: ScrollingContainer(
        child: Column(
          children: [
            Text(
                'CROP AVaILABITY NUMBERS (LISTS ALL CROPS BEING PLANTED IN BOTSWANA)'),
            Text(
                'LOCATION OF FARMERS (ONCE THE CROP IS SELECTED ALL FARMS WITH CROP ARE LISTED'),
          ],
        ),
      ),
    );
  }
}
