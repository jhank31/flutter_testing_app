import 'package:app_flutter_testing/core/constants/constants.dart';
import 'package:app_flutter_testing/core/error/exception.dart';
import 'package:app_flutter_testing/data/dog/models/dog_model.dart';
import 'package:dio/dio.dart';

abstract class DogRemoteDataSource {
  Future<DogModel> getRandomDog();
}

class DogRemoteDataSourceImpl extends DogRemoteDataSource {
  final Dio client;
  DogRemoteDataSourceImpl({required this.client});
  @override
  Future<DogModel> getRandomDog() async {
      final response = await client.get(Urls.urlDogs);
      if(response.statusCode == 200){
        final decode =  DogModel.fromJson(response.data);
        return decode;
      } else {
        throw ServerException();
      }
    } 
}
