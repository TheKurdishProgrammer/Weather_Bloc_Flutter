import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/data/weather_api_service.dart';
import 'package:waether_app/models/built_root_weather.dart';

import 'WeatherBloc.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WeatherAppState();
  }
}

class WeatherAppState extends State<WeatherApp> {
  WeatherBloc weatherBloc;

  @override
  void initState() {
    weatherBloc = WeatherBloc(WeatherApiService.create());

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        resizeToAvoidBottomInset: false,
        body:
        BlocProvider(create: (context) => weatherBloc, child: MyHomePage()),
      ),
    );
  }

  @override
  void dispose() {
    weatherBloc.close();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  bool isWeatherShown = false;

  @override
  Widget build(BuildContext context) {
    var weatherBloc = BlocProvider.of<WeatherBloc>(context);

    var cityController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: FlareActor(
            "assets/WorldSpin.flr",
            fit: BoxFit.contain,
            animation: "roll",
          ),
        ),
        BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            isWeatherShown = false;
            if (state is WeatherNotSearched) // first initial state
              return WeatherNotSearchWidget(
                  context, weatherBloc, cityController);
            else if (state is WeatherIsLoaded) //weather has been loaded
              return WeatherWidget(cityController.text, state.weather.main,
                  weatherBloc, isWeatherShown = true);
            else if (state is WeatherIsLoading) // weather is being loaded
              return _weatherProgressWaiting();
            else
              return _weatherLoadError();
          },
        ),
      ],
    );
  }

  Widget WeatherErrorWidget() {}

  Widget WeatherLoadingWidget() {}

  Widget WeatherNotSearchWidget(BuildContext context, WeatherBloc weatherBloc,
      TextEditingController cityController) {
    return Column(
      children: <Widget>[
        Text(
          "Search Weather",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 40, color: Colors.white70),
        ),
        Text(
          "Quickly",
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 32, color: Colors.white70),
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          cursorColor: Colors.white70,
          controller: cityController,
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            fillColor: Colors.blueAccent,
            hintText: "City Name...",
            labelText: "Your Favourite City",
            labelStyle: TextStyle(color: Colors.white70),
            hintStyle: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w300,
                fontSize: 14),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SearchButton(context, weatherBloc, isWeatherShown, cityController.text),
      ],
    );
  }
}

SearchButton(BuildContext context, WeatherBloc weatherBloc, bool isWeatherShown,
    String cityName) {
  return Container(
    width: MediaQuery
        .of(context)
        .size
        .width,
    child: FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () =>
      isWeatherShown
          ? weatherBloc.add(new WeatherResetEvent())
          : weatherBloc.add(new FetchWeatherEvent(cityName)),
      color: Colors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Search",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 40,
            color: Colors.white70,
          ),
        ),
      ),
    ),
  );
}

Widget _weatherLoadError() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      "Weather Could Be Loaded due error or Internet Connectivity",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.redAccent, fontSize: 24, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _weatherProgressWaiting() {
  return Container(
    width: 64,
    height: 64,
    child: CircularProgressIndicator(
      backgroundColor: Colors.white70,
      strokeWidth: 8,
    ),
  );
}

class WeatherWidget extends StatelessWidget {
  final String cityName;

  final Main weather;

  final WeatherBloc weatherBloc;

  final bool isWeatherShown;

  WeatherWidget(this.cityName, this.weather, this.weatherBloc,
      this.isWeatherShown);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          cityName,
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 32, color: Colors.white70),
        ),
        SizedBox(
          height: 24,
        ),
        _tempretureDegree(weather.temp.toStringAsFixed(3)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _tempretureDegree(weather.tempMin.toStringAsFixed(2), "Min"),
            _tempretureDegree(weather.tempMax.toStringAsFixed(2), "Max")
          ],
        ),
        SizedBox(
          height: 4,
        ),
        SearchButton(context, weatherBloc, isWeatherShown, cityName)
      ],
    );
  }

  Widget _tempretureDegree(String degree, [String tempType = "Tempreture"]) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "${degree}C",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 32, color: Colors.white70),
        ),
        Text(
          "$tempType Tempreture",
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 12, color: Colors.white70),
        ),
      ],
    );
  }
}
