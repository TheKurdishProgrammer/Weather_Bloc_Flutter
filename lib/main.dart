import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        false
            ? Column(
          children: <Widget>[
            Text(
              "Search Weather",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.white70),
            ),
            Text(
              "Quickly",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 32,
                  color: Colors.white70),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              cursorColor: Colors.white70,
              controller: TextEditingController(),
              style: TextStyle(
                  color: Colors.white70, fontWeight: FontWeight.w400),
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
          ],
        )
            : /*WeatherWidget("City")*/ _weatherProgressWaiting(),
        SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: FlatButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
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
        ),
      ],
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
}

class WeatherWidget extends StatelessWidget {
  final String cityName;

  WeatherWidget(this.cityName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          "Erbil",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 32, color: Colors.white70),
        ),
        SizedBox(
          height: 24,
        ),
        _tempretureDegree(20, ""),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _tempretureDegree(30, "Min"),
            _tempretureDegree(30, "Max")
          ],
        )
      ],
    );
  }
}

Widget _tempretureDegree(int degree, String tempType) {
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
