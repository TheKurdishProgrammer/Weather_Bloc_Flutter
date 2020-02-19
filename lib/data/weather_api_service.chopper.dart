// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$WeatherApiService extends WeatherApiService {
  _$WeatherApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = WeatherApiService;

  Future<Response<BuiltWeather>> getWeather(String q,
      [String appId = "43ea6baaad7663dc17637e22ee6f78f2"]) {
    final $url = '/weather';
    final Map<String, dynamic> $params = {'q': q, 'APPID': appId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltWeather, BuiltWeather>($request);
  }
}
