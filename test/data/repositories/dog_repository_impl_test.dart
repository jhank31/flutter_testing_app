import 'dart:io';

import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/core/error/failure.dart';
import 'package:app_flutter_testing/data/dog/models/dog_model.dart';
import 'package:app_flutter_testing/data/dog/repositories/dog_repository_impl.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDogRemoteDataSource mockDogRemoteDataSource;
  late DogRepositoryImpl dogRepositoryImpl;

  setUp(() {
    mockDogRemoteDataSource = MockDogRemoteDataSource();
    dogRepositoryImpl =
        DogRepositoryImpl(dogRemoteDataSource: mockDogRemoteDataSource);
  });

  const dogModel = DogModel(
      message: 'https://images.dog.ceo/breeds/entlebucher/n02108000_1172.jpg',
      status: 'success');
  const dogEntity = DogEntity(
      message: 'https://images.dog.ceo/breeds/entlebucher/n02108000_1172.jpg',
      status: 'success');

  group('get random dog', () {
    test('should return random dog when a call to data source is successfull',
        () async {
      when(mockDogRemoteDataSource.getRandomDog())
          .thenAnswer((_) async => dogModel);

      final result = await dogRepositoryImpl.getRandomDog();

      expect(result, equals(const Right(dogEntity)));
    });
     test('should return random Failure when a call to data source is unsuccessfull',
        () async {
      when(mockDogRemoteDataSource.getRandomDog())
          .thenThrow(ServerException());

      final result = await dogRepositoryImpl.getRandomDog();

      expect(result, equals(const Left(ServerFailure('Un error ha ocurrido en el servidor'))));
    });
     test('should return random Failure when a call to data source is not connected to internet',
        () async {
      when(mockDogRemoteDataSource.getRandomDog())
          .thenThrow(const SocketException('Fallo la conexión a internet'));

      final result = await dogRepositoryImpl.getRandomDog();

      expect(result, equals(const Left(ConnectionFailure('No hay conexión a internet'))));
    });
  });
}
