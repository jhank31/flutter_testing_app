import 'package:app_flutter_testing/core/error/failure.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:dartz/dartz.dart';

abstract class DogRepository {
  Future<Either<Failure, DogEntity>> getRandomDog();
}