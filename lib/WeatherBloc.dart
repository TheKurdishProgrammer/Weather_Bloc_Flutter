import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:waether_app/data/weather_api_service.dart';
import 'package:waether_app/models/built_weather.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherApiService weatherRepo;

  WeatherBloc(this.weatherRepo);

  @override
  // TODO: implement initialState
  WeatherState get initialState => WeatherNotSearched();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeatherEvent) {
      yield WeatherIsLoading();

      try {
        var weather = await weatherRepo.getWeather(event.city);

        yield WeatherIsLoaded(weather.body);
      } catch (e) {
        print(e.toString());
      }
    } else {
      yield WeatherNotSearched();
    }
  }
}

// Weather Fetch Events
class WeatherEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchWeatherEvent extends WeatherEvent {
  final String city;

  FetchWeatherEvent(this.city);
}

class WeatherResetEvent extends WeatherEvent {}

class WeatherState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WeatherIsLoading extends WeatherState {}

class WeatherIsLoaded extends WeatherState {
  final BuiltWeather weather;

  WeatherIsLoaded(this.weather);
}

class WeatherCouldNotBeLoad extends WeatherState {}

class WeatherNotSearched extends WeatherState {}
