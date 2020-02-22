// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_root_weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltRootWeather> _$builtRootWeatherSerializer =
    new _$BuiltRootWeatherSerializer();
Serializer<Coord> _$coordSerializer = new _$CoordSerializer();
Serializer<Main> _$mainSerializer = new _$MainSerializer();
Serializer<Wind> _$windSerializer = new _$WindSerializer();
Serializer<Sys> _$sysSerializer = new _$SysSerializer();
Serializer<Clouds> _$cloudsSerializer = new _$CloudsSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$BuiltRootWeatherSerializer
    implements StructuredSerializer<BuiltRootWeather> {
  @override
  final Iterable<Type> types = const [BuiltRootWeather, _$BuiltRootWeather];
  @override
  final String wireName = 'BuiltRootWeather';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltRootWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'coord',
      serializers.serialize(object.coord, specifiedType: const FullType(Coord)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(Main)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'wind',
      serializers.serialize(object.wind, specifiedType: const FullType(Wind)),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(Clouds)),
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'cod',
      serializers.serialize(object.cod, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltRootWeather deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltRootWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coord)) as Coord);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))
              as BuiltList<Object>);
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(Main)) as Main);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind)) as Wind);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(Clouds)) as Clouds);
          break;
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys)) as Sys);
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordSerializer implements StructuredSerializer<Coord> {
  @override
  final Iterable<Type> types = const [Coord, _$Coord];
  @override
  final String wireName = 'Coord';

  @override
  Iterable<Object> serialize(Serializers serializers, Coord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Coord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable<Object> serialize(Serializers serializers, Main object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feelsLike',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'tempMin',
      serializers.serialize(object.tempMin,
          specifiedType: const FullType(double)),
      'tempMax',
      serializers.serialize(object.tempMax,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_min':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_max':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WindSerializer implements StructuredSerializer<Wind> {
  @override
  final Iterable<Type> types = const [Wind, _$Wind];
  @override
  final String wireName = 'Wind';

  @override
  Iterable<Object> serialize(Serializers serializers, Wind object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(double)),
      'deg',
      serializers.serialize(object.deg, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Wind deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SysSerializer implements StructuredSerializer<Sys> {
  @override
  final Iterable<Type> types = const [Sys, _$Sys];
  @override
  final String wireName = 'Sys';

  @override
  Iterable<Object> serialize(Serializers serializers, Sys object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Sys deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudsSerializer implements StructuredSerializer<Clouds> {
  @override
  final Iterable<Type> types = const [Clouds, _$Clouds];
  @override
  final String wireName = 'Clouds';

  @override
  Iterable<Object> serialize(Serializers serializers, Clouds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'all',
      serializers.serialize(object.all, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Clouds deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltRootWeather extends BuiltRootWeather {
  @override
  final Coord coord;
  @override
  final BuiltList<Weather> weather;
  @override
  final String base;
  @override
  final Main main;
  @override
  final int visibility;
  @override
  final Wind wind;
  @override
  final Clouds clouds;
  @override
  final int dt;
  @override
  final Sys sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;

  factory _$BuiltRootWeather(
          [void Function(BuiltRootWeatherBuilder) updates]) =>
      (new BuiltRootWeatherBuilder()..update(updates)).build();

  _$BuiltRootWeather._(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod})
      : super._() {
    if (coord == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'coord');
    }
    if (weather == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'weather');
    }
    if (base == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'base');
    }
    if (main == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'main');
    }
    if (visibility == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'visibility');
    }
    if (wind == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'wind');
    }
    if (clouds == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'clouds');
    }
    if (dt == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'dt');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'sys');
    }
    if (timezone == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'timezone');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'name');
    }
    if (cod == null) {
      throw new BuiltValueNullFieldError('BuiltRootWeather', 'cod');
    }
  }

  @override
  BuiltRootWeather rebuild(void Function(BuiltRootWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltRootWeatherBuilder toBuilder() =>
      new BuiltRootWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltRootWeather &&
        coord == other.coord &&
        weather == other.weather &&
        base == other.base &&
        main == other.main &&
        visibility == other.visibility &&
        wind == other.wind &&
        clouds == other.clouds &&
        dt == other.dt &&
        sys == other.sys &&
        timezone == other.timezone &&
        id == other.id &&
        name == other.name &&
        cod == other.cod;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, coord.hashCode),
                                                    weather.hashCode),
                                                base.hashCode),
                                            main.hashCode),
                                        visibility.hashCode),
                                    wind.hashCode),
                                clouds.hashCode),
                            dt.hashCode),
                        sys.hashCode),
                    timezone.hashCode),
                id.hashCode),
            name.hashCode),
        cod.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltRootWeather')
          ..add('coord', coord)
          ..add('weather', weather)
          ..add('base', base)
          ..add('main', main)
          ..add('visibility', visibility)
          ..add('wind', wind)
          ..add('clouds', clouds)
          ..add('dt', dt)
          ..add('sys', sys)
          ..add('timezone', timezone)
          ..add('id', id)
          ..add('name', name)
          ..add('cod', cod))
        .toString();
  }
}

class BuiltRootWeatherBuilder
    implements Builder<BuiltRootWeather, BuiltRootWeatherBuilder> {
  _$BuiltRootWeather _$v;

  CoordBuilder _coord;
  CoordBuilder get coord => _$this._coord ??= new CoordBuilder();
  set coord(CoordBuilder coord) => _$this._coord = coord;

  ListBuilder<Weather> _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather> weather) => _$this._weather = weather;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  MainBuilder _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder main) => _$this._main = main;

  int _visibility;
  int get visibility => _$this._visibility;
  set visibility(int visibility) => _$this._visibility = visibility;

  WindBuilder _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder wind) => _$this._wind = wind;

  CloudsBuilder _clouds;
  CloudsBuilder get clouds => _$this._clouds ??= new CloudsBuilder();
  set clouds(CloudsBuilder clouds) => _$this._clouds = clouds;

  int _dt;
  int get dt => _$this._dt;
  set dt(int dt) => _$this._dt = dt;

  SysBuilder _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder sys) => _$this._sys = sys;

  int _timezone;
  int get timezone => _$this._timezone;
  set timezone(int timezone) => _$this._timezone = timezone;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _cod;
  int get cod => _$this._cod;
  set cod(int cod) => _$this._cod = cod;

  BuiltRootWeatherBuilder();

  BuiltRootWeatherBuilder get _$this {
    if (_$v != null) {
      _coord = _$v.coord?.toBuilder();
      _weather = _$v.weather?.toBuilder();
      _base = _$v.base;
      _main = _$v.main?.toBuilder();
      _visibility = _$v.visibility;
      _wind = _$v.wind?.toBuilder();
      _clouds = _$v.clouds?.toBuilder();
      _dt = _$v.dt;
      _sys = _$v.sys?.toBuilder();
      _timezone = _$v.timezone;
      _id = _$v.id;
      _name = _$v.name;
      _cod = _$v.cod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltRootWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltRootWeather;
  }

  @override
  void update(void Function(BuiltRootWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltRootWeather build() {
    _$BuiltRootWeather _$result;
    try {
      _$result = _$v ??
          new _$BuiltRootWeather._(
              coord: coord.build(),
              weather: weather.build(),
              base: base,
              main: main.build(),
              visibility: visibility,
              wind: wind.build(),
              clouds: clouds.build(),
              dt: dt,
              sys: sys.build(),
              timezone: timezone,
              id: id,
              name: name,
              cod: cod);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
        _$failedField = 'weather';
        weather.build();

        _$failedField = 'main';
        main.build();

        _$failedField = 'wind';
        wind.build();
        _$failedField = 'clouds';
        clouds.build();

        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltRootWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Coord extends Coord {
  @override
  final double lon;
  @override
  final double lat;

  factory _$Coord([void Function(CoordBuilder) updates]) =>
      (new CoordBuilder()..update(updates)).build();

  _$Coord._({this.lon, this.lat}) : super._() {
    if (lon == null) {
      throw new BuiltValueNullFieldError('Coord', 'lon');
    }
    if (lat == null) {
      throw new BuiltValueNullFieldError('Coord', 'lat');
    }
  }

  @override
  Coord rebuild(void Function(CoordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordBuilder toBuilder() => new CoordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coord && lon == other.lon && lat == other.lat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lon.hashCode), lat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coord')
          ..add('lon', lon)
          ..add('lat', lat))
        .toString();
  }
}

class CoordBuilder implements Builder<Coord, CoordBuilder> {
  _$Coord _$v;

  double _lon;
  double get lon => _$this._lon;
  set lon(double lon) => _$this._lon = lon;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  CoordBuilder();

  CoordBuilder get _$this {
    if (_$v != null) {
      _lon = _$v.lon;
      _lat = _$v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Coord;
  }

  @override
  void update(void Function(CoordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coord build() {
    final _$result = _$v ?? new _$Coord._(lon: lon, lat: lat);
    replace(_$result);
    return _$result;
  }
}

class _$Main extends Main {
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  factory _$Main([void Function(MainBuilder) updates]) =>
      (new MainBuilder()..update(updates)).build();

  _$Main._(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity})
      : super._() {
    if (temp == null) {
      throw new BuiltValueNullFieldError('Main', 'temp');
    }
    if (feelsLike == null) {
      throw new BuiltValueNullFieldError('Main', 'feelsLike');
    }
    if (tempMin == null) {
      throw new BuiltValueNullFieldError('Main', 'tempMin');
    }
    if (tempMax == null) {
      throw new BuiltValueNullFieldError('Main', 'tempMax');
    }
    if (pressure == null) {
      throw new BuiltValueNullFieldError('Main', 'pressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('Main', 'humidity');
    }
  }

  @override
  Main rebuild(void Function(MainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, temp.hashCode), feelsLike.hashCode),
                    tempMin.hashCode),
                tempMax.hashCode),
            pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Main')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('pressure', pressure)
          ..add('humidity', humidity))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main _$v;

  double _temp;
  double get temp => _$this._temp;
  set temp(double temp) => _$this._temp = temp;

  double _feelsLike;
  double get feelsLike => _$this._feelsLike;
  set feelsLike(double feelsLike) => _$this._feelsLike = feelsLike;

  double _tempMin;
  double get tempMin => _$this._tempMin;
  set tempMin(double tempMin) => _$this._tempMin = tempMin;

  double _tempMax;
  double get tempMax => _$this._tempMax;
  set tempMax(double tempMax) => _$this._tempMax = tempMax;

  int _pressure;
  int get pressure => _$this._pressure;
  set pressure(int pressure) => _$this._pressure = pressure;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  MainBuilder();

  MainBuilder get _$this {
    if (_$v != null) {
      _temp = _$v.temp;
      _feelsLike = _$v.feelsLike;
      _tempMin = _$v.tempMin;
      _tempMax = _$v.tempMax;
      _pressure = _$v.pressure;
      _humidity = _$v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Main build() {
    final _$result = _$v ??
        new _$Main._(
            temp: temp,
            feelsLike: feelsLike,
            tempMin: tempMin,
            tempMax: tempMax,
            pressure: pressure,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

class _$Wind extends Wind {
  @override
  final double speed;
  @override
  final int deg;

  factory _$Wind([void Function(WindBuilder) updates]) =>
      (new WindBuilder()..update(updates)).build();

  _$Wind._({this.speed, this.deg}) : super._() {
    if (speed == null) {
      throw new BuiltValueNullFieldError('Wind', 'speed');
    }
    if (deg == null) {
      throw new BuiltValueNullFieldError('Wind', 'deg');
    }
  }

  @override
  Wind rebuild(void Function(WindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindBuilder toBuilder() => new WindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wind && speed == other.speed && deg == other.deg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, speed.hashCode), deg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Wind')
          ..add('speed', speed)
          ..add('deg', deg))
        .toString();
  }
}

class WindBuilder implements Builder<Wind, WindBuilder> {
  _$Wind _$v;

  double _speed;
  double get speed => _$this._speed;
  set speed(double speed) => _$this._speed = speed;

  int _deg;
  int get deg => _$this._deg;
  set deg(int deg) => _$this._deg = deg;

  WindBuilder();

  WindBuilder get _$this {
    if (_$v != null) {
      _speed = _$v.speed;
      _deg = _$v.deg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wind other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Wind;
  }

  @override
  void update(void Function(WindBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Wind build() {
    final _$result = _$v ?? new _$Wind._(speed: speed, deg: deg);
    replace(_$result);
    return _$result;
  }
}

class _$Sys extends Sys {
  @override
  final int type;
  @override
  final int id;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  factory _$Sys([void Function(SysBuilder) updates]) =>
      (new SysBuilder()..update(updates)).build();

  _$Sys._({this.type, this.id, this.country, this.sunrise, this.sunset})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('Sys', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Sys', 'id');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Sys', 'country');
    }
    if (sunrise == null) {
      throw new BuiltValueNullFieldError('Sys', 'sunrise');
    }
    if (sunset == null) {
      throw new BuiltValueNullFieldError('Sys', 'sunset');
    }
  }

  @override
  Sys rebuild(void Function(SysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysBuilder toBuilder() => new SysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sys &&
        type == other.type &&
        id == other.id &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), id.hashCode), country.hashCode),
            sunrise.hashCode),
        sunset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sys')
          ..add('type', type)
          ..add('id', id)
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class SysBuilder implements Builder<Sys, SysBuilder> {
  _$Sys _$v;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _sunrise;
  int get sunrise => _$this._sunrise;
  set sunrise(int sunrise) => _$this._sunrise = sunrise;

  int _sunset;
  int get sunset => _$this._sunset;
  set sunset(int sunset) => _$this._sunset = sunset;

  SysBuilder();

  SysBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _country = _$v.country;
      _sunrise = _$v.sunrise;
      _sunset = _$v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sys other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sys;
  }

  @override
  void update(void Function(SysBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sys build() {
    final _$result = _$v ??
        new _$Sys._(
            type: type,
            id: id,
            country: country,
            sunrise: sunrise,
            sunset: sunset);
    replace(_$result);
    return _$result;
  }
}

class _$Clouds extends Clouds {
  @override
  final int all;

  factory _$Clouds([void Function(CloudsBuilder) updates]) =>
      (new CloudsBuilder()..update(updates)).build();

  _$Clouds._({this.all}) : super._() {
    if (all == null) {
      throw new BuiltValueNullFieldError('Clouds', 'all');
    }
  }

  @override
  Clouds rebuild(void Function(CloudsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudsBuilder toBuilder() => new CloudsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clouds && all == other.all;
  }

  @override
  int get hashCode {
    return $jf($jc(0, all.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Clouds')..add('all', all)).toString();
  }
}

class CloudsBuilder implements Builder<Clouds, CloudsBuilder> {
  _$Clouds _$v;

  int _all;
  int get all => _$this._all;
  set all(int all) => _$this._all = all;

  CloudsBuilder();

  CloudsBuilder get _$this {
    if (_$v != null) {
      _all = _$v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Clouds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Clouds;
  }

  @override
  void update(void Function(CloudsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Clouds build() {
    final _$result = _$v ?? new _$Clouds._(all: all);
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$Weather([void Function(WeatherBuilder) updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._({this.id, this.main, this.description, this.icon}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Weather', 'id');
    }
    if (main == null) {
      throw new BuiltValueNullFieldError('Weather', 'main');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Weather', 'description');
    }
    if (icon == null) {
      throw new BuiltValueNullFieldError('Weather', 'icon');
    }
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _main;
  String get main => _$this._main;
  set main(String main) => _$this._main = main;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _main = _$v.main;
      _description = _$v.description;
      _icon = _$v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
