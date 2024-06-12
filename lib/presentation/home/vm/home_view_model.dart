import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/data/dog/repositories/dog_repository_impl.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:app_flutter_testing/domain/dog/use_cases/dog_use_cases.dart';
import 'package:app_flutter_testing/utils/custom_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel() {
    getRandomDog();
  }
  final dogRepoImpl = DogUseCases(
      dogRepository: DogRepositoryImpl(
          dogRemoteDataSource: DogRemoteDataSourceImpl(client: Dio())));

  DogEntity? _randomDog;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  DogEntity? get randomDog => _randomDog;

  Future<void> getRandomDog() async {
    try {
      _isLoading = true;
      notifyListeners();
      final resp = await dogRepoImpl.getRandomDog();
      resp.fold((l) => throw(ServerException()), (r) => _randomDog = r);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      CustomException(e.toString());
    }
  }
}
