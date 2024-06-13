// Mocks generated by Mockito 5.4.4 from annotations
// in app_flutter_testing/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i12;

import 'package:app_flutter_testing/core/error/failure.dart' as _i8;
import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart'
    as _i10;
import 'package:app_flutter_testing/data/dog/models/dog_model.dart' as _i3;
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart' as _i9;
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart'
    as _i6;
import 'package:app_flutter_testing/domain/dog/use_cases/dog_use_cases.dart'
    as _i4;
import 'package:app_flutter_testing/presentation/home/vm/home_view_model.dart'
    as _i11;
import 'package:dartz/dartz.dart' as _i2;
import 'package:dio/dio.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDogModel_1 extends _i1.SmartFake implements _i3.DogModel {
  _FakeDogModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDogUseCases_2 extends _i1.SmartFake implements _i4.DogUseCases {
  _FakeDogUseCases_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_3 extends _i1.SmartFake implements _i5.BaseOptions {
  _FakeBaseOptions_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_4 extends _i1.SmartFake
    implements _i5.HttpClientAdapter {
  _FakeHttpClientAdapter_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_5 extends _i1.SmartFake implements _i5.Transformer {
  _FakeTransformer_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_6 extends _i1.SmartFake implements _i5.Interceptors {
  _FakeInterceptors_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_7<T1> extends _i1.SmartFake implements _i5.Response<T1> {
  _FakeResponse_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DogRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDogRepository extends _i1.Mock implements _i6.DogRepository {
  MockDogRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.DogEntity>> getRandomDog() =>
      (super.noSuchMethod(
        Invocation.method(
          #getRandomDog,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i9.DogEntity>>.value(
            _FakeEither_0<_i8.Failure, _i9.DogEntity>(
          this,
          Invocation.method(
            #getRandomDog,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i9.DogEntity>>);
}

/// A class which mocks [DogRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDogRemoteDataSource extends _i1.Mock
    implements _i10.DogRemoteDataSource {
  MockDogRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i3.DogModel> getRandomDog() => (super.noSuchMethod(
        Invocation.method(
          #getRandomDog,
          [],
        ),
        returnValue: _i7.Future<_i3.DogModel>.value(_FakeDogModel_1(
          this,
          Invocation.method(
            #getRandomDog,
            [],
          ),
        )),
      ) as _i7.Future<_i3.DogModel>);
}

/// A class which mocks [HomeViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeViewModel extends _i1.Mock implements _i11.HomeViewModel {
  MockHomeViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.DogUseCases get dogUseCases => (super.noSuchMethod(
        Invocation.getter(#dogRepoImpl),
        returnValue: _FakeDogUseCases_2(
          this,
          Invocation.getter(#dogRepoImpl),
        ),
      ) as _i4.DogUseCases);

  @override
  bool get isLoading => (super.noSuchMethod(
        Invocation.getter(#isLoading),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  _i7.Future<void> getRandomDog() => (super.noSuchMethod(
        Invocation.method(
          #getRandomDog,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  void addListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i5.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_3(
          this,
          Invocation.getter(#options),
        ),
      ) as _i5.BaseOptions);

  @override
  set options(_i5.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_4(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i5.HttpClientAdapter);

  @override
  set httpClientAdapter(_i5.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_5(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i5.Transformer);

  @override
  set transformer(_i5.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_6(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i5.Interceptors);

  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<_i5.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i5.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i5.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i7.Future<_i5.Response<dynamic>>.value(_FakeResponse_7<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<dynamic>>);

  @override
  _i7.Future<_i5.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i5.ProgressCallback? onReceiveProgress,
    _i5.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i7.Future<_i5.Response<dynamic>>.value(_FakeResponse_7<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<dynamic>>);

  @override
  _i7.Future<_i5.Response<T>> request<T>(
    String? url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.CancelToken? cancelToken,
    _i5.Options? options,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [url],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i5.CancelToken? cancelToken,
    _i5.Options? options,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> fetch<T>(_i5.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i7.Future<_i5.Response<T>>.value(_FakeResponse_7<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i7.Future<_i5.Response<T>>);
}
