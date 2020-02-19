// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltWeather> _$builtWeatherSerializer =
    new _$BuiltWeatherSerializer();

class _$BuiltWeatherSerializer implements StructuredSerializer<BuiltWeather> {
  @override
  final Iterable<Type> types = const [BuiltWeather, _$BuiltWeather];
  @override
  final String wireName = 'BuiltWeather';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
      'temp_max',
      serializers.serialize(object.temp_max,
          specifiedType: const FullType(double)),
      'temp_min',
      serializers.serialize(object.temp_min,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  BuiltWeather deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWeatherBuilder();

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
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_max':
          result.temp_max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_min':
          result.temp_min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWeather extends BuiltWeather {
  @override
  final double temp;
  @override
  final double pressure;
  @override
  final double humidity;
  @override
  final double temp_max;
  @override
  final double temp_min;

  factory _$BuiltWeather([void Function(BuiltWeatherBuilder) updates]) =>
      (new BuiltWeatherBuilder()..update(updates)).build();

  _$BuiltWeather._(
      {this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min})
      : super._() {
    if (temp == null) {
      throw new BuiltValueNullFieldError('BuiltWeather', 'temp');
    }
    if (pressure == null) {
      throw new BuiltValueNullFieldError('BuiltWeather', 'pressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('BuiltWeather', 'humidity');
    }
    if (temp_max == null) {
      throw new BuiltValueNullFieldError('BuiltWeather', 'temp_max');
    }
    if (temp_min == null) {
      throw new BuiltValueNullFieldError('BuiltWeather', 'temp_min');
    }
  }

  @override
  BuiltWeather rebuild(void Function(BuiltWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWeatherBuilder toBuilder() => new BuiltWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWeather &&
        temp == other.temp &&
        pressure == other.pressure &&
        humidity == other.humidity &&
        temp_max == other.temp_max &&
        temp_min == other.temp_min;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, temp.hashCode), pressure.hashCode),
                humidity.hashCode),
            temp_max.hashCode),
        temp_min.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWeather')
          ..add('temp', temp)
          ..add('pressure', pressure)
          ..add('humidity', humidity)
          ..add('temp_max', temp_max)
          ..add('temp_min', temp_min))
        .toString();
  }
}

class BuiltWeatherBuilder
    implements Builder<BuiltWeather, BuiltWeatherBuilder> {
  _$BuiltWeather _$v;

  double _temp;

  double get temp => _$this._temp;

  set temp(double temp) => _$this._temp = temp;

  double _pressure;

  double get pressure => _$this._pressure;

  set pressure(double pressure) => _$this._pressure = pressure;

  double _humidity;

  double get humidity => _$this._humidity;

  set humidity(double humidity) => _$this._humidity = humidity;

  double _temp_max;

  double get temp_max => _$this._temp_max;

  set temp_max(double temp_max) => _$this._temp_max = temp_max;

  double _temp_min;

  double get temp_min => _$this._temp_min;

  set temp_min(double temp_min) => _$this._temp_min = temp_min;

  BuiltWeatherBuilder();

  BuiltWeatherBuilder get _$this {
    if (_$v != null) {
      _temp = _$v.temp;
      _pressure = _$v.pressure;
      _humidity = _$v.humidity;
      _temp_max = _$v.temp_max;
      _temp_min = _$v.temp_min;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWeather;
  }

  @override
  void update(void Function(BuiltWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWeather build() {
    final _$result = _$v ??
        new _$BuiltWeather._(
            temp: temp,
            pressure: pressure,
            humidity: humidity,
            temp_max: temp_max,
            temp_min: temp_min);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
