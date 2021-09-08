import 'package:africola/core/data/string_constants.dart';
import 'package:africola/core/data/string_data.dart';
import 'package:africola/ui/screens/farmer/add_crops.dart';
import 'package:africola/ui/screens/farmer/view_couriers.dart';
import 'package:africola/ui/screens/farmer/view_shops.dart';
import 'package:africola/ui/screens/farmer/weather_updates.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';

class FarmerRoute extends StatelessWidget {
  static const id = kFarmerRouteId;
  FarmerRoute({Key? key}) : super(key: key);
  final int _numOfOptions = 4;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    // final List<Future<Object?>> farmerNavigators = [
    //];
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Dashboard'),
      ),
      body: ScrollingContainer(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          children: List.generate(
              kFarmerOptionStrings.length,
              (index) => InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      if (index == 0) {
                        Navigator.pushNamed(context, AddCrops.id);
                      } else if (index == 1) {
                        Navigator.pushNamed(context, ViewCouriers.id);
                      } else if (index == 2) {
                        Navigator.pushNamed(context, ViewShops.id);
                      } else if (index == 3) {
                        Navigator.pushNamed(context, WeatherUpdates.id);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(
                        minWidth: 100.0,
                        minHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green.shade300, width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            kFarmerOptionIcons[index],
                            size: 48.0,
                            color: Colors.green,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            kFarmerOptionStrings[index],
                            style: _textTheme.bodyText1!.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
