import 'package:app_flutter_testing/domain/dogs/model/dog_model.dart';
import 'package:app_flutter_testing/domain/dogs/use_cases/dog_use_cases.dart';
import 'package:app_flutter_testing/utils/custom_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel({Dio? httpClient}) {
    getRandomDog();

  }

  final dogUseCases = DogUseCases();

  DogModel? _randomDog;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  DogModel? get randomDog => _randomDog;

  Future<void> getRandomDog() async {
    try {
      _isLoading = true;
      notifyListeners();
      _randomDog = await dogUseCases.getRandomDog(httpClient: dio);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      CustomException(e.toString());
    }
  }
}
