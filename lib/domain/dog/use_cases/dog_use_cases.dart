
import 'package:app_flutter_testing/core/error/failure.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart';
import 'package:dartz/dartz.dart';

class DogUseCases {
  final DogRepository  dogRepository;
  const DogUseCases({required this.dogRepository});

  Future<Either<Failure, DogEntity>> getRandomDog() async {
    return await dogRepository.getRandomDog();
  }
}