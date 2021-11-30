import 'package:elementary_weather_flutter/service/model/weather.dart';
import 'package:elementary_weather_flutter/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherForecastTile extends StatelessWidget {
  final int position;
  final Weather weather;

  const WeatherForecastTile({
    Key? key,
    required this.position,
    required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 25),
        Text(
          position == 0
              ? 'Today'
              : DateFormat('EEEE').format(weather.applicableDate),
          style: AppTypography.body.copyWith(fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          '${weather.weatherStateName} ',
          style: AppTypography.body.copyWith(color: Colors.black45),
        ),
        const SizedBox(width: 20),
        Image.asset(
          'assets/weather/${weather.weatherStateAbbr.abbr}.png',
          height: 40,
          width: 40,
        ),
        const SizedBox(width: 20),
        Text(
          '${weather.maxTemp.round().toString()}°',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}
