
import 'package:app_flutter_testing/domain/dogs/model/dog_model.dart';
import 'package:app_flutter_testing/infreastructure/dog_services/dog_services.dart';
import 'package:dio/dio.dart';

class DogUseCases {
  final interfaceDogWateGay = DogServices();

  Future<DogModel?> getRandomDog({Dio? httpClient}) async {
    return await interfaceDogWateGay.getRandomDog(httpClient: httpClient);
  }
}