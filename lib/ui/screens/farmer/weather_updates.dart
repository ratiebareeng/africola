import 'package:africola/core/data/string_constants.dart';
import 'package:africola/core/data/string_data.dart';
import 'package:africola/core/util/time_util.dart';
import 'package:africola/ui/screens/farmer/weather_forecast.dart';
import 'package:africola/ui/widgets/order_detail_rich_text.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class WeatherUpdates extends StatelessWidget {
  static const id = kWeatherUpdatesRouteId;
  WeatherUpdates({Key? key}) : super(key: key);

  final WeatherFactory _weatherFactory = new WeatherFactory(kOpenWeatherApiKey);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final headlineTextTheme = _textTheme.bodyText1!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 18.0,
    );
    final Future<Weather>? _weatherFuture =
        _weatherFactory.currentWeatherByCityName(kCityName);
    final Future<List<Weather>> forecast =
        _weatherFactory.fiveDayForecastByCityName(kCityName);
    String todayWeatherImage = 'assets/images/sunny.png';

    Widget _buildTodaySummary(Weather weather) {
      if (weather.cloudiness! >= 4 && weather.cloudiness! < 6) {
        todayWeatherImage = 'assets/images/partly_sunny.png';
      } else if (weather.cloudiness! >= 6) {
        todayWeatherImage = 'assets/images/cloudy.png';
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            todayWeatherImage,
            height: 200.0,
            width: 200.0,
          ),
          Text(weather.weatherDescription!),
          Text(
            '${weather.temperature!.celsius!.round()} \u2103',
            style: _textTheme.headline6!.copyWith(
              fontSize: 48.0,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Updates'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, WeatherForecast.id),
            child: Text(
              'Forecast',
              style: _textTheme.bodyText1,
            ),
          )
        ],
      ),
      body: FutureBuilder<Weather>(
          future: _weatherFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Weather? weather = snapshot.data;
              return weather != null
                  ? ScrollingContainer(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TimeUtil.getDateDMY(
                              weather.date!.millisecondsSinceEpoch.toString()),
                          style: _textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.green,
                            ),
                            SizedBox(width: 4.0),
                            LabelDetailRichText(
                                labelText: 'Gaborone', detailText: 'Botswana'),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Center(child: _buildTodaySummary(weather)),
                        SizedBox(height: 16.0),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.green.shade100.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Rain',
                                    style: headlineTextTheme,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(weather.rainLast3Hours != null
                                      ? '${weather.rainLast3Hours.toString()} mm'
                                      : '0 mm'),
                                  SizedBox(height: 16.0),
                                  Text(
                                    'Humidity',
                                    style: headlineTextTheme,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(weather.humidity != null
                                      ? '${weather.humidity!.round().toString()} %'
                                      : '0 %'),
                                ],
                              ),
                              Container(
                                /*   padding: EdgeInsets.all(8.0),
                                color: Colors.green, */
                                child: Image.asset(
                                  todayWeatherImage,
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Wind',
                                    style: headlineTextTheme,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(weather.windSpeed != null
                                      ? '${weather.windSpeed!.round().toString()} m/s'
                                      : '0 m/s'),
                                  SizedBox(height: 16.0),
                                  Text(
                                    'Pressure',
                                    style: headlineTextTheme,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(weather.pressure != null
                                      ? '${weather.pressure!.round().toString()} Pa'
                                      : '0 Pa'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ))
                  : Center(
                      child: Text('No weather data for Gaborone'),
                    );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text(
                    'Error loading weather data ...\n${snapshot.error.toString()}'),
              );
            }

            return Center(
              child: Text(
                  'Loading Weather ...\nCurrent Location: Gaborone, Botswana'),
            );
          }),
    );
  }
}
