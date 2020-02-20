import 'package:chopper/chopper.dart';
import 'package:waether_app/data/built_value_converter.dart';
import 'package:waether_app/models/built_root_weather.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi(baseUrl: "/weather")
abstract class WeatherApiService extends ChopperService {
  @Get()
  Future<Response<BuiltRootWeather>> getWeather(@Query("q") String q,
      [@Query("APPID") String appId = "43ea6baaad7663dc17637e22ee6f78f2"]);

  static WeatherApiService create() {
    final client = new ChopperClient(
      baseUrl: 'https://api.openweathermap.org/data/2.5',
      services: [_$WeatherApiService()],
      converter: BuiltValueConverter(),
      interceptors: [HttpLoggingInterceptor()],
    );

    return _$WeatherApiService(client);
  }
}
