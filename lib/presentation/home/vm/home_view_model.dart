import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/di.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:app_flutter_testing/domain/dog/use_cases/dog_use_cases.dart';
import 'package:app_flutter_testing/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  late DogUseCases dogUseCases;

  HomeViewModel({DogUseCases? dogUseCases})
      : dogUseCases = dogUseCases ?? di<DogUseCases>() {
    getRandomDog();
  }

  DogEntity? _randomDog;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  DogEntity? get randomDog => _randomDog;

  Future<void> getRandomDog() async {
    try {
      _isLoading = true;
      notifyListeners();
      final resp = await dogUseCases.getRandomDog();
      resp.fold((l) => throw (ServerException()), (r) => _randomDog = r);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      CustomException(e.toString());
    }
  }
}
