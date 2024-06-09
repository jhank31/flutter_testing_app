import 'package:app_flutter_testing/domain/dogs/model/dog_model.dart';
import 'package:dio/dio.dart';

abstract class InterfaceDogGateWay {
  Future<DogModel?> getRandomDog({Dio? httpClient});
}