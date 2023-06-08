// Mocks generated by Mockito 5.4.1 from annotations
// in wiindy/test/weather_repo_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:get/get.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wiindy/models/api_response.dart' as _i3;
import 'package:wiindy/models/current_weather.dart' as _i5;
import 'package:wiindy/models/forecast_weather.dart' as _i8;
import 'package:wiindy/repos/weather_repo.dart' as _i7;
import 'package:wiindy/services/api_service.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDuration_0 extends _i1.SmartFake implements Duration {
  _FakeDuration_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetHttpClient_1 extends _i1.SmartFake implements _i2.GetHttpClient {
  _FakeGetHttpClient_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInternalFinalCallback_2<T> extends _i1.SmartFake
    implements _i2.InternalFinalCallback<T> {
  _FakeInternalFinalCallback_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApiResponse_3 extends _i1.SmartFake implements _i3.ApiResponse {
  _FakeApiResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_4<T1> extends _i1.SmartFake implements _i2.Response<T1> {
  _FakeResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetSocket_5 extends _i1.SmartFake implements _i2.GetSocket {
  _FakeGetSocket_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGraphQLResponse_6<T1> extends _i1.SmartFake
    implements _i2.GraphQLResponse<T1> {
  _FakeGraphQLResponse_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApiService_7 extends _i1.SmartFake implements _i4.ApiService {
  _FakeApiService_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCurrentWeather_8 extends _i1.SmartFake
    implements _i5.CurrentWeather {
  _FakeCurrentWeather_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i4.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get allowAutoSignedCert => (super.noSuchMethod(
        Invocation.getter(#allowAutoSignedCert),
        returnValue: false,
      ) as bool);
  @override
  set allowAutoSignedCert(bool? _allowAutoSignedCert) => super.noSuchMethod(
        Invocation.setter(
          #allowAutoSignedCert,
          _allowAutoSignedCert,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get userAgent => (super.noSuchMethod(
        Invocation.getter(#userAgent),
        returnValue: '',
      ) as String);
  @override
  set userAgent(String? _userAgent) => super.noSuchMethod(
        Invocation.setter(
          #userAgent,
          _userAgent,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get sendUserAgent => (super.noSuchMethod(
        Invocation.getter(#sendUserAgent),
        returnValue: false,
      ) as bool);
  @override
  set sendUserAgent(bool? _sendUserAgent) => super.noSuchMethod(
        Invocation.setter(
          #sendUserAgent,
          _sendUserAgent,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set baseUrl(String? _baseUrl) => super.noSuchMethod(
        Invocation.setter(
          #baseUrl,
          _baseUrl,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get defaultContentType => (super.noSuchMethod(
        Invocation.getter(#defaultContentType),
        returnValue: '',
      ) as String);
  @override
  set defaultContentType(String? _defaultContentType) => super.noSuchMethod(
        Invocation.setter(
          #defaultContentType,
          _defaultContentType,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get followRedirects => (super.noSuchMethod(
        Invocation.getter(#followRedirects),
        returnValue: false,
      ) as bool);
  @override
  set followRedirects(bool? _followRedirects) => super.noSuchMethod(
        Invocation.setter(
          #followRedirects,
          _followRedirects,
        ),
        returnValueForMissingStub: null,
      );
  @override
  int get maxRedirects => (super.noSuchMethod(
        Invocation.getter(#maxRedirects),
        returnValue: 0,
      ) as int);
  @override
  set maxRedirects(int? _maxRedirects) => super.noSuchMethod(
        Invocation.setter(
          #maxRedirects,
          _maxRedirects,
        ),
        returnValueForMissingStub: null,
      );
  @override
  int get maxAuthRetries => (super.noSuchMethod(
        Invocation.getter(#maxAuthRetries),
        returnValue: 0,
      ) as int);
  @override
  set maxAuthRetries(int? _maxAuthRetries) => super.noSuchMethod(
        Invocation.setter(
          #maxAuthRetries,
          _maxAuthRetries,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set defaultDecoder(_i2.Decoder<dynamic>? _defaultDecoder) =>
      super.noSuchMethod(
        Invocation.setter(
          #defaultDecoder,
          _defaultDecoder,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Duration get timeout => (super.noSuchMethod(
        Invocation.getter(#timeout),
        returnValue: _FakeDuration_0(
          this,
          Invocation.getter(#timeout),
        ),
      ) as Duration);
  @override
  set timeout(Duration? _timeout) => super.noSuchMethod(
        Invocation.setter(
          #timeout,
          _timeout,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set trustedCertificates(List<_i2.TrustedCertificate>? _trustedCertificates) =>
      super.noSuchMethod(
        Invocation.setter(
          #trustedCertificates,
          _trustedCertificates,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set findProxy(String Function(Uri)? _findProxy) => super.noSuchMethod(
        Invocation.setter(
          #findProxy,
          _findProxy,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get withCredentials => (super.noSuchMethod(
        Invocation.getter(#withCredentials),
        returnValue: false,
      ) as bool);
  @override
  set withCredentials(bool? _withCredentials) => super.noSuchMethod(
        Invocation.setter(
          #withCredentials,
          _withCredentials,
        ),
        returnValueForMissingStub: null,
      );
  @override
  List<_i2.GetSocket> get sockets => (super.noSuchMethod(
        Invocation.getter(#sockets),
        returnValue: <_i2.GetSocket>[],
      ) as List<_i2.GetSocket>);
  @override
  _i2.GetHttpClient get httpClient => (super.noSuchMethod(
        Invocation.getter(#httpClient),
        returnValue: _FakeGetHttpClient_1(
          this,
          Invocation.getter(#httpClient),
        ),
      ) as _i2.GetHttpClient);
  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);
  @override
  set sockets(List<_i2.GetSocket>? _sockets) => super.noSuchMethod(
        Invocation.setter(
          #sockets,
          _sockets,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.InternalFinalCallback<void> get onStart => (super.noSuchMethod(
        Invocation.getter(#onStart),
        returnValue: _FakeInternalFinalCallback_2<void>(
          this,
          Invocation.getter(#onStart),
        ),
      ) as _i2.InternalFinalCallback<void>);
  @override
  _i2.InternalFinalCallback<void> get onDelete => (super.noSuchMethod(
        Invocation.getter(#onDelete),
        returnValue: _FakeInternalFinalCallback_2<void>(
          this,
          Invocation.getter(#onDelete),
        ),
      ) as _i2.InternalFinalCallback<void>);
  @override
  bool get initialized => (super.noSuchMethod(
        Invocation.getter(#initialized),
        returnValue: false,
      ) as bool);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void onInit() => super.noSuchMethod(
        Invocation.method(
          #onInit,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i3.ApiResponse> apiCall({
    required String? route,
    required _i4.RequestMethod? requestMethod,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiCall,
          [],
          {
            #route: route,
            #requestMethod: requestMethod,
            #params: params,
            #headers: headers,
          },
        ),
        returnValue: _i6.Future<_i3.ApiResponse>.value(_FakeApiResponse_3(
          this,
          Invocation.method(
            #apiCall,
            [],
            {
              #route: route,
              #requestMethod: requestMethod,
              #params: params,
              #headers: headers,
            },
          ),
        )),
      ) as _i6.Future<_i3.ApiResponse>);
  @override
  _i6.Future<_i2.Response<T>> get<T>(
    String? url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {
            #headers: headers,
            #contentType: contentType,
            #query: query,
            #decoder: decoder,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #get,
            [url],
            {
              #headers: headers,
              #contentType: contentType,
              #query: query,
              #decoder: decoder,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i6.Future<_i2.Response<T>> post<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
    _i2.Progress? uploadProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            url,
            body,
          ],
          {
            #contentType: contentType,
            #headers: headers,
            #query: query,
            #decoder: decoder,
            #uploadProgress: uploadProgress,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #post,
            [
              url,
              body,
            ],
            {
              #contentType: contentType,
              #headers: headers,
              #query: query,
              #decoder: decoder,
              #uploadProgress: uploadProgress,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i6.Future<_i2.Response<T>> put<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
    _i2.Progress? uploadProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [
            url,
            body,
          ],
          {
            #contentType: contentType,
            #headers: headers,
            #query: query,
            #decoder: decoder,
            #uploadProgress: uploadProgress,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #put,
            [
              url,
              body,
            ],
            {
              #contentType: contentType,
              #headers: headers,
              #query: query,
              #decoder: decoder,
              #uploadProgress: uploadProgress,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i6.Future<_i2.Response<T>> patch<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
    _i2.Progress? uploadProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [
            url,
            body,
          ],
          {
            #contentType: contentType,
            #headers: headers,
            #query: query,
            #decoder: decoder,
            #uploadProgress: uploadProgress,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #patch,
            [
              url,
              body,
            ],
            {
              #contentType: contentType,
              #headers: headers,
              #query: query,
              #decoder: decoder,
              #uploadProgress: uploadProgress,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i6.Future<_i2.Response<T>> request<T>(
    String? url,
    String? method, {
    dynamic body,
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
    _i2.Progress? uploadProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [
            url,
            method,
          ],
          {
            #body: body,
            #contentType: contentType,
            #headers: headers,
            #query: query,
            #decoder: decoder,
            #uploadProgress: uploadProgress,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #request,
            [
              url,
              method,
            ],
            {
              #body: body,
              #contentType: contentType,
              #headers: headers,
              #query: query,
              #decoder: decoder,
              #uploadProgress: uploadProgress,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i6.Future<_i2.Response<T>> delete<T>(
    String? url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    _i2.Decoder<T>? decoder,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #contentType: contentType,
            #query: query,
            #decoder: decoder,
          },
        ),
        returnValue: _i6.Future<_i2.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #contentType: contentType,
              #query: query,
              #decoder: decoder,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response<T>>);
  @override
  _i2.GetSocket socket(
    String? url, {
    Duration? ping = const Duration(seconds: 5),
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #socket,
          [url],
          {#ping: ping},
        ),
        returnValue: _FakeGetSocket_5(
          this,
          Invocation.method(
            #socket,
            [url],
            {#ping: ping},
          ),
        ),
      ) as _i2.GetSocket);
  @override
  _i6.Future<_i2.GraphQLResponse<T>> query<T>(
    String? query, {
    String? url,
    Map<String, dynamic>? variables,
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #query,
          [query],
          {
            #url: url,
            #variables: variables,
            #headers: headers,
          },
        ),
        returnValue:
            _i6.Future<_i2.GraphQLResponse<T>>.value(_FakeGraphQLResponse_6<T>(
          this,
          Invocation.method(
            #query,
            [query],
            {
              #url: url,
              #variables: variables,
              #headers: headers,
            },
          ),
        )),
      ) as _i6.Future<_i2.GraphQLResponse<T>>);
  @override
  _i6.Future<_i2.GraphQLResponse<T>> mutation<T>(
    String? mutation, {
    String? url,
    Map<String, dynamic>? variables,
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #mutation,
          [mutation],
          {
            #url: url,
            #variables: variables,
            #headers: headers,
          },
        ),
        returnValue:
            _i6.Future<_i2.GraphQLResponse<T>>.value(_FakeGraphQLResponse_6<T>(
          this,
          Invocation.method(
            #mutation,
            [mutation],
            {
              #url: url,
              #variables: variables,
              #headers: headers,
            },
          ),
        )),
      ) as _i6.Future<_i2.GraphQLResponse<T>>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onReady() => super.noSuchMethod(
        Invocation.method(
          #onReady,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onClose() => super.noSuchMethod(
        Invocation.method(
          #onClose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void $configureLifeCycle() => super.noSuchMethod(
        Invocation.method(
          #$configureLifeCycle,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [WeatherRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherRepo extends _i1.Mock implements _i7.WeatherRepo {
  MockWeatherRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.ApiService get apiService => (super.noSuchMethod(
        Invocation.getter(#apiService),
        returnValue: _FakeApiService_7(
          this,
          Invocation.getter(#apiService),
        ),
      ) as _i4.ApiService);
  @override
  set apiService(_i4.ApiService? _apiService) => super.noSuchMethod(
        Invocation.setter(
          #apiService,
          _apiService,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i5.CurrentWeather> getCurrentWeather({required String? city}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentWeather,
          [],
          {#city: city},
        ),
        returnValue: _i6.Future<_i5.CurrentWeather>.value(_FakeCurrentWeather_8(
          this,
          Invocation.method(
            #getCurrentWeather,
            [],
            {#city: city},
          ),
        )),
      ) as _i6.Future<_i5.CurrentWeather>);
  @override
  _i6.Future<List<_i8.ForecastWeather>> getForecastWeather(
          {required String? city}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getForecastWeather,
          [],
          {#city: city},
        ),
        returnValue: _i6.Future<List<_i8.ForecastWeather>>.value(
            <_i8.ForecastWeather>[]),
      ) as _i6.Future<List<_i8.ForecastWeather>>);
  @override
  _i6.Future<_i5.CurrentWeather> getCurrentWeatherFromLatLng({
    required double? lat,
    required double? lng,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentWeatherFromLatLng,
          [],
          {
            #lat: lat,
            #lng: lng,
          },
        ),
        returnValue: _i6.Future<_i5.CurrentWeather>.value(_FakeCurrentWeather_8(
          this,
          Invocation.method(
            #getCurrentWeatherFromLatLng,
            [],
            {
              #lat: lat,
              #lng: lng,
            },
          ),
        )),
      ) as _i6.Future<_i5.CurrentWeather>);
  @override
  _i6.Future<List<_i8.ForecastWeather>> getForecastWeatherFromLatLng({
    required double? lat,
    required double? lng,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getForecastWeatherFromLatLng,
          [],
          {
            #lat: lat,
            #lng: lng,
          },
        ),
        returnValue: _i6.Future<List<_i8.ForecastWeather>>.value(
            <_i8.ForecastWeather>[]),
      ) as _i6.Future<List<_i8.ForecastWeather>>);
}
