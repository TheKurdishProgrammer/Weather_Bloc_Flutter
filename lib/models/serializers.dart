import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'built_weather.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltWeather])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
