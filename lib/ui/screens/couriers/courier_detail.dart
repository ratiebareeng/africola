import 'package:africola/core/models/courier.dart';

import 'package:flutter/material.dart';

class CourierDetail extends StatelessWidget {
  final Courier courier;

  CourierDetail(this.courier);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courier.name),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
