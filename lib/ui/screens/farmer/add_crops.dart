import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class AddCrops extends StatefulWidget {
  static const id = kAddCropsRouteId;
  const AddCrops({Key? key}) : super(key: key);

  @override
  _AddCropsState createState() => _AddCropsState();
}

class _AddCropsState extends State<AddCrops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Crops'),
        ),
        body: ScrollingContainer(child: Column()));
  }
}
