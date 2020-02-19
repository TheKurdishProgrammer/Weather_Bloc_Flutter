import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_weather.g.dart';

abstract class BuiltWeather
    implements Built<BuiltWeather, BuiltWeatherBuilder> {
  double get temp;

  double get pressure;

  double get humidity;

  double get temp_max;

  double get temp_min;

  double get getTemp => temp - 272.5;

  double get getMaxTemp => temp_max - 272.5;

  double get getMinTemp => temp_min - 272.5;

  BuiltWeather._();

  factory BuiltWeather([updates(BuiltWeatherBuilder b)]) = _$BuiltWeather;

  static Serializer<BuiltWeather> get serializer => _$builtWeatherSerializer;
}
