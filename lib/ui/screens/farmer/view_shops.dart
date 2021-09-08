import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class ViewShops extends StatelessWidget {
  static const id = kViewShopsRouteId;
  ViewShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shops'),
      ),
      body: ScrollingContainer(child: Column()),
    );
  }
}