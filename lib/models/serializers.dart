import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
 import 'built_root_weather.dart';

part 'serializers.g.dart';

@SerializersFor([BuiltRootWeather])
final Serializers serializers = _$serializers;
Serializers mainSerializers =
(serializers.toBuilder()
    ..addPlugin(StandardJsonPlugin())).build();
