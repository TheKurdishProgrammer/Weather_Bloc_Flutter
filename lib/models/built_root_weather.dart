import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_root_weather.g.dart';

abstract class BuiltRootWeather
    implements Built<BuiltRootWeather, BuiltRootWeatherBuilder> {
  Coord get coord;

  BuiltList<Weather> get weather;

  String get base;

  Main get main;

  int get visibility;

  Wind get wind;

  Clouds get clouds;

  int get dt;

  Sys get sys;

  int get timezone;

  int get id;

  String get name;

  int get cod;

  BuiltRootWeather._();

  static Serializer<BuiltRootWeather> get serializer =>
      _$builtRootWeatherSerializer;

  factory BuiltRootWeather([void Function(BuiltRootWeatherBuilder) updates]) =
      _$BuiltRootWeather;
}

abstract class Coord implements Built<Coord, CoordBuilder> {
  double get lon;

  double get lat;

  Coord._();

  static Serializer<Coord> get serializer => _$coordSerializer;

  factory Coord([void Function(CoordBuilder) updates]) = _$Coord;
}

abstract class Main implements Built<Main, MainBuilder> {
  double get temp;

  double get feelsLike;

  double get tempMin;

  double get tempMax;

  int get pressure;

  int get humidity;

  Main._();

  static Serializer<Main> get serializer => _$mainSerializer;

  factory Main([void Function(MainBuilder) updates]) = _$Main;
}

abstract class Wind implements Built<Wind, WindBuilder> {
  double get speed;

  int get deg;

  Wind._();

  static Serializer<Wind> get serializer => _$windSerializer;

  factory Wind([void Function(WindBuilder) updates]) = _$Wind;
}

abstract class Sys implements Built<Sys, SysBuilder> {
  int get type;

  int get id;

  String get country;

  int get sunrise;

  int get sunset;

  Sys._();

  static Serializer<Sys> get serializer => _$sysSerializer;

  factory Sys([void Function(SysBuilder) updates]) = _$Sys;
}

abstract class Clouds implements Built<Clouds, CloudsBuilder> {
  int get all;

  Clouds._();

  static Serializer<Clouds> get serializer => _$cloudsSerializer;

  factory Clouds([void Function(CloudsBuilder) updates]) = _$Clouds;
}

abstract class Weather implements Built<Weather, WeatherBuilder> {
  int get id;

  String get main;

  String get description;

  String get icon;

  Weather._();

  static Serializer<Weather> get serializer => _$weatherSerializer;

  factory Weather([void Function(WeatherBuilder) updates]) = _$Weather;
}
