import 'package:flutter/material.dart';

class ScrollingContainer extends StatelessWidget {
  final Widget child;
  const ScrollingContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: _screenSize.width,
        height: _screenSize.height,
        child: child,
      ),
    );
  }
}
