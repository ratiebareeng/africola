import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class GovernmentRoute extends StatelessWidget {
  static const id = kGovernmentRouteId;
  const GovernmentRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Government Home'),
      ),
      body: ScrollingContainer(
        child: Column(
          children: [
            Text('View FIGURES OF CROP NUMBERS FROM FARMERS IN THE PLATFORM '),
          ],
        ),
      ),
    );
  }
}
