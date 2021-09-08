import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/screens/couriers/courier_detail.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

import 'package:africola/core/models/courier.dart';

class ViewCouriers extends StatelessWidget {
  static const id = kViewCouriersRouteId;
  ViewCouriers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Couriers'),
      ),
      body: ScrollingContainer(
        child: ListView(
          children: [
            GestureDetector(
              child: CouriersView(sampleCouriers[0]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CourierDetail(sampleCouriers[0]),
                  ),
                );
              },
            ),
            GestureDetector(
              child: CouriersView(sampleCouriers[1]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CourierDetail(sampleCouriers[1]),
                  ),
                );
              },
            ),
            GestureDetector(
              child: CouriersView(sampleCouriers[2]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CourierDetail(sampleCouriers[2]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CouriersView extends StatelessWidget {
  Courier courier;

  CouriersView(this.courier);

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
                      fit: BoxFit.fill,
                      image: AssetImage(courier.logoUrl),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    courier.name,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(courier.contact),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(courier.email),
              )
            ],
          )),
    );
  }
}
