import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  // TODO: implement initialState
  WeatherState get initialState => null;

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}

// Weather Fetch Events
class WeatherEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WeatherFetchEvent extends WeatherEvent {}

class WeatherState {}
