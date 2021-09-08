import 'package:africola/core/data/string_constants.dart';
import 'package:africola/core/data/string_data.dart';
import 'package:africola/core/util/time_util.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class WeatherForecast extends StatelessWidget {
  static const id = kWeatherForecastRouteId;
  WeatherForecast({Key? key}) : super(key: key);
  final WeatherFactory _weatherFactory = new WeatherFactory(kOpenWeatherApiKey);

  @override
  Widget build(BuildContext context) {
    final Future<List<Weather>> _forecast =
        _weatherFactory.fiveDayForecastByCityName(kCityName);
    String todayWeatherImage = 'assets/images/sunny.png';

    Widget _buildIcon(Weather weather) {
      if (weather.cloudiness! <= 3) {
        todayWeatherImage = 'assets/images/sunny.png';
      } else if (weather.cloudiness! >= 4 && weather.cloudiness! < 6) {
        todayWeatherImage = 'assets/images/partly_sunny.png';
      } else if (weather.cloudiness! >= 6) {
        todayWeatherImage = 'assets/images/cloudy.png';
      }
      return Image.asset(
        todayWeatherImage,
        //height: 200.0,
        //width: 200.0,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Gaborone 5-Day Forecast'),
      ),
      body: ScrollingContainer(
          child: FutureBuilder<List<Weather>>(
        future: _forecast,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Weather>? weatherForcast = snapshot.data;

            return weatherForcast != null
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: weatherForcast.length,
                    itemBuilder: (context, index) {
                      Weather weather = weatherForcast[index];
                      return ListTile(
                        leading: Text(TimeUtil.getDateTimeDay(
                            weather.date!.millisecondsSinceEpoch.toString())),
                        title: Text(weather.weatherDescription!),
                        trailing: _buildIcon(weather),
                      );
                    })
                : Center(
                    child: Text('No weather forecast data for Gaborone'),
                  );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                  'Error loading weather forecast data ...\n${snapshot.error.toString()}'),
            );
          }
          return Center(
            child: Text('Loading Gaborone Forecast'),
          );
        },
      )),
    );
  }
}
