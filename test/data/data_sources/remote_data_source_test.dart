import 'package:app_flutter_testing/core/constants/constants.dart';
import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/data/dog/models/dog_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/dummy_data/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDio mockDio;
  late DogRemoteDataSourceImpl dogRemoteDataSourceImpl;

  setUp(() {
    mockDio = MockDio();
    dogRemoteDataSourceImpl = DogRemoteDataSourceImpl(client: mockDio);
  });

  group('get dogs', () {
    test('should return dogs when the response code is 200', () async {
      when(mockDio.get(Urls.urlDogs)).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(path: Urls.urlDogs),
          statusCode: 200,
          data: jsonReader('helpers/dummy_data/dog_response.json')));

      final result = await dogRemoteDataSourceImpl.getRandomDog();

      expect(result, isA<DogModel>());
    });

    test(
        'should throw a server exception when the response code is 404 or other',
        () async {
      when(mockDio.get(Urls.urlDogs)).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(path: Urls.urlDogs),
          statusCode: 404,
          data: 'Not found'));
      //final result = await dogRemoteDataSourceImpl.getRandomDog();
      //! si se espera una excepción, se debe envolver el código en una función anónima async
      expect(() async => await dogRemoteDataSourceImpl.getRandomDog()  , throwsA(isA<ServerException>()));
    });
  });
}
