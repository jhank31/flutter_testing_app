import 'package:app_flutter_testing/domain/dogs/interface/interface_dog_gate_way.dart';
import 'package:app_flutter_testing/domain/dogs/model/dog_model.dart';
import 'package:app_flutter_testing/utils/custom_exception.dart';
import 'package:dio/dio.dart';

class DogServices implements InterfaceDogGateWay {
  @override
  Future<DogModel?> getRandomDog({Dio? httpClient}) async {
    httpClient ??= Dio();
    DogModel? randomDog;
    try {
      await httpClient
          .get('https://dog.ceo/api/breeds/image/random')
          .then((response) {
        if (response.statusCode == 200 &&
            response.data['status'] == 'success') {
          randomDog = DogModel.fromJson(response.data);
          return randomDog;
        } else {
          throw DioException(
              requestOptions: RequestOptions(
                  path: 'https://dog.ceo/api/breeds/image/random'),
              response: response);
        }
      });
    } catch (e) {
      throw CustomException('Error desconocido al traer los perros: $e');
    }
    return randomDog;
  }
}
