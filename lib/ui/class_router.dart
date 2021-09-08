import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/screens/agric_shops_route.dart';
import 'package:africola/ui/screens/courier_route.dart';
import 'package:africola/ui/screens/farmer/add_crops.dart';
import 'package:africola/ui/screens/farmer/view_couriers.dart';
import 'package:africola/ui/screens/farmer/view_shops.dart';
import 'package:africola/ui/screens/farmer/weather_updates.dart';
import 'package:africola/ui/screens/farmer_route.dart';
import 'package:africola/ui/screens/govt_route.dart';
import 'package:africola/ui/screens/login_route.dart';
import 'package:africola/ui/screens/success_screen.dart';
import 'package:africola/ui/screens/vendor_route.dart';
import 'package:flutter/material.dart';

import 'screens/farmer/weather_forecast.dart';

class ClassRouter {
//Route<dynamic> generateRoute(RouteSettings settings)
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      // FarmerRoute
      case FarmerRoute.id:
        return MaterialPageRoute(builder: (context) => FarmerRoute());

      // AgricShopsRoute
      case AgricShopsRoute.id:
        return MaterialPageRoute(builder: (context) => AgricShopsRoute());

      // CourierRoute
      case CourierRoute.id:
        return MaterialPageRoute(builder: (context) => CourierRoute());

      // VendorRoute
      case VendorRoute.id:
        return MaterialPageRoute(builder: (context) => VendorRoute());

      // VendorRoute
      case GovernmentRoute.id:
        return MaterialPageRoute(builder: (context) => GovernmentRoute());

      // VendorRoute
      case Login.id:
        return MaterialPageRoute(builder: (context) => Login());

      // VendorRoute
      case SuccessScreen.id:
        /* var appBarTitle = settings.arguments as String;
        var headerText = settings.arguments as String;
        var messageText = settings.arguments as String; */
        return MaterialPageRoute(
            builder: (_) => SuccessScreen(
                /* appBarTitle: appBarTitle,
                  headerText: headerText,
                  messageText: messageText, */
                ));

      // AddCrops
      case AddCrops.id:
        return MaterialPageRoute(builder: (context) => AddCrops());

      // ViewCouriers
      case ViewCouriers.id:
        return MaterialPageRoute(builder: (context) => ViewCouriers());

      // ViewShops
      case ViewShops.id:
        return MaterialPageRoute(builder: (context) => ViewShops());

      // AddCrops
      case WeatherUpdates.id:
        return MaterialPageRoute(builder: (context) => WeatherUpdates());

      // AddCrops
      case WeatherForecast.id:
        return MaterialPageRoute(builder: (context) => WeatherForecast());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(appName),
            ),
            body: Center(
              child: Text('No page defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
