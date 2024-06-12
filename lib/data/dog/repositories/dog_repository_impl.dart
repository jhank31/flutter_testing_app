import 'dart:developer';
import 'dart:io';

import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/core/error/failure.dart';
import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart';
import 'package:dartz/dartz.dart';

class DogRepositoryImpl extends DogRepository {
  final DogRemoteDataSource dogRemoteDataSource;
  DogRepositoryImpl({required this.dogRemoteDataSource});

  @override
  Future<Either<Failure, DogEntity>> getRandomDog() async {
    try {
      final result = await dogRemoteDataSource.getRandomDog();
      log('result: $result');
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('Un error ha ocurrido en el servidor'));
    } on SocketException {
      return const Left(ConnectionFailure('No hay conexión a internet'));
    }
  }

}